/*******************************************************************************
 * (c) Copyright 2012-2013 Microsemi SoC Products Group.  All rights reserved.
 *
 *
 * USB MSC Class Host controller example application to demonstrate the
 * SmartFusion2 MSS USB operations in USB Host mode.
 *
 * This project can detect "Memory Stick" category devices and perform file
 * operations on it. To know more about how to use this project please refer
 * README.TXT in this project's folder.
 *
 * SVN $Revision:  $
 * SVN $Date:  $
 */

#include <string.h>
#include <stdio.h>
#include "ff.h"
#include "diskio.h"
#include "mss_usb_host.h"
#include "mss_usb_host_msc.h"
#include "mss_usb_host.h"
#include "mss_usb_std_def.h"
#include "mss_uart.h"
#include "mss_gpio.h"
#include "mss_sys_services.h"
#include "CMSIS/system_m2sxxx.h"
#define SYS_TICK_LOAD_VALUE                             50000u  /*For 1ms*/

#define MAX_ELEMENT_COUNT                               10u

#define ESC_KEY                                         27u
#define ENTER_KEY                                       13u
#define BUFFER_SIZE                                     512
#define NOTIFY											14336
FATFS fs;
FRESULT res;
FIL fsrc;





char path[] = "0:";
char* file_name[MAX_ELEMENT_COUNT][13] = {{0}};
BYTE file_attrib[MAX_ELEMENT_COUNT] = {0};
FRESULT scan_root_dir (char* path);/*Start node to be scanned (also used as work area)*/





//*&*************************ISP related***********************************
uint32_t page_read_handler(uint8_t const ** pp_next_page);
void isp_completion_handler(uint32_t value);
void press_any_key(void);
static void isp_operations_menu(void);
static void select_file_menu(void);
mss_uart_instance_t * const gp_my_uart = &g_mss_uart1;
static uint32_t g_src_image_target_address = 0,g_error_flag = 1;
uint32_t g_index = 0;
volatile uint8_t g_isp_operation_busy = 1;
uint8_t g_page_buffer[BUFFER_SIZE];
//***********************************************************

void USB_DEV_attached(mss_usb_device_speed_t speed);
void USB_DEV_dettached(void);
void USB_DEV_oc_error(void);
void USB_DEV_enumerated(mss_usbh_tdev_info_t tdev_info);
void USB_DEV_class_driver_assigned(void);
void USB_DEV_not_supported(int8_t error_code);
void USB_DEV_permanent_erro(void);

void MSC_DEV_valid_config(void);
void MSC_DEV_ready(void);
void MSC_DEV_driver_released(void);
void MSC_DEV_error(int8_t error_code);

mss_usbh_user_cb_t MSS_USBH_user_cb =
{
		USB_DEV_attached,
		USB_DEV_dettached,
		USB_DEV_oc_error,
		USB_DEV_enumerated,
		USB_DEV_class_driver_assigned,
		USB_DEV_not_supported,
		USB_DEV_permanent_erro
};

mss_usbh_msc_user_cb_t MSS_USBH_MSC_user_cb =
{
		MSC_DEV_valid_config,
		MSC_DEV_ready,
		MSC_DEV_driver_released,
		MSC_DEV_error,
};

/*Global variables*/
uint8_t g_msc_driver_ready = 0u;
uint8_t g_msc_driver_released = 0u;
uint8_t hex_to_char(uint8_t nibble_value)
{
	uint8_t hex_char = '0';

	if (nibble_value < 10u)
	{
		hex_char = nibble_value + '0';
	}
	else if (nibble_value < 16u)
	{
		hex_char = nibble_value + 'A' - 10;
	}

	return hex_char;
}
void display_hex_byte(uint8_t hex_byte)
{
	uint8_t hex_value_msg[2];
	uint8_t upper;
	uint8_t lower;

	upper = (hex_byte >> 4u) & 0x0Fu;
	lower = hex_byte & 0x0Fu;
	hex_value_msg[0] = hex_to_char(upper);
	hex_value_msg[1] = hex_to_char(lower);
	MSS_UART_polled_tx(&g_mss_uart1, hex_value_msg, sizeof(hex_value_msg));
	MSS_UART_polled_tx_string(&g_mss_uart1, (uint8_t *)" ");
}



int main()
{
	uint8_t key,valid_file,mode = 4,error=1;
	uint8_t menu_level = 0u;
	uint8_t rx_size = 0u;
	char * match = NULL;
	uint8_t rx_data;

	MSS_GPIO_init();
	MSS_GPIO_config( MSS_GPIO_3 , MSS_GPIO_OUTPUT_MODE );
	MSS_GPIO_set_output( MSS_GPIO_3 , 1 );

	//uart da FPGA
	MSS_UART_init( gp_my_uart,
	            MSS_UART_57600_BAUD,
	            MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

	//UART FTDI
	MSS_UART_init( &g_mss_uart0,
	                MSS_UART_57600_BAUD,
	                MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);


	while(1)
	{

	      // Aguarda até que um caractere seja recebido
	      while (MSS_UART_get_rx(gp_my_uart, &rx_data, 1) == 0)
	      {
	          // Continua aguardando
	      }


	      //uint8_t tx_data = 'f';

	      // Transmite o caractere 'b' usando a UART0
          MSS_UART_polled_tx(&g_mss_uart0, &rx_data, 1);


	}



}

void SysTick_Handler(void)
{
	/*
     This function must be called. This function provides the time stamp
     which is used to keep track of activities such as USB Reset, Settling time etc.
     in Enumeration process.
     The USBH driver and USBH-MSC class driver housekeeping task is also run based
     on this timestamp.

     This avoids the application to wait for the enumeration process to complete
     which might take time in 100s of miliseconds depending on target device.

     You may choose a general purpose timer instead of Systick.
	 */
	MSS_USBH_task();
	MSS_USBH_MSC_task();
	MSS_USBH_1ms_tick();
}

FRESULT scan_root_dir (
		char* path        /* Start node to be scanned (also used as work area) */
)
{
	FRESULT res;
	FILINFO fno;
	DIR dir;
	int elements = 0u;
	/* This function is assuming non-Unicode cfg. */

	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rElements in Root Directory (Maximum 10):");

	res = f_opendir(&dir, path);                       /* Open the directory */
	if (res == FR_OK)
	{
		while (elements < MAX_ELEMENT_COUNT)
		{
			res = f_readdir(&dir, &fno);                   // Read a directory item
			if (fno.fname[0] == '.') continue;             // Ignore dot entry

			if (res != FR_OK)
			{
				MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\r Error reading root directory\n\r");
				break;
			}
			else
			{
				if(fno.fname[0] == 0)
				{
					if(elements == 0u)
					{
						MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rRoot directory is empty\n\r");
					}
					break;
				}
				else
				{
					uint8_t character = 0;
					strncpy((char*)file_name[elements], fno.fname,20); //store file names and attributes for using it in File read menu.
					file_attrib[elements] = fno.fattrib;
					MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\r ");
					character = elements + '0';
					MSS_UART_polled_tx(gp_my_uart,(uint8_t *)&character, 1u);
					MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)" -   ");
					MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)fno.fname);
				}
			}
			elements++;
		}
	}
	return res;
}

void USB_DEV_attached(mss_usb_device_speed_t speed)
{
	if(speed == MSS_USB_DEVICE_HS)
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rHS ");
	if(speed == MSS_USB_DEVICE_FS)
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rFS ");
	if(speed == MSS_USB_DEVICE_LS)
		MSS_UART_polled_tx_string(  gp_my_uart,(uint8_t *)"\n\rLS ");

	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"Device detected");
}
void USB_DEV_dettached(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\rUSB Device removed\n");
}
void USB_DEV_oc_error(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\rOverCurrent error");
}
void USB_DEV_enumerated(mss_usbh_tdev_info_t tdev_info)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\rEnumeration successful\n");
}
void USB_DEV_class_driver_assigned(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rMSC Class driver assigned");
}
void USB_DEV_not_supported(int8_t error_code)
{
	switch(error_code)
	{
	case FS_DEV_NOT_SUPPORTED:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rFS Device Not Supported");
		break;
	case LS_DEV_NOT_SUPPORTED:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rLS Device Not Supported");
		break;
	case HUB_CLASS_NOT_SUPPORTED:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rHUB Not Supported");
		break;
	case CLASS_DRIVER_NOT_MATCHED:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rClass Not Supported");
		break;
	case CLASS_DRIVER_NOT_FREE:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rClass driver not free");
		break;
	case CONF_DESC_POWER_LIM_EXCEED:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rDevice needs more power");
		break;
	case CONF_DESC_WRONG_DESC_TYPE:
	case CONF_DESC_WRONG_LENGTH:
	case DEV_DESC_LS_MAXPKTSZ0_NOT8:
	case DEV_DESC_HS_MAXPKTSZ0_NOT64:
	case DEV_DESC_HS_USBBCD_NOT200:
	case DEV_DESC_WRONG_MAXPKTSZ0:
	case DEV_DESC_WRONG_USBBCD:
	case DEV_DESC_WRONG_DESC_TYPE:
	case DEV_DESC_WRONG_LENGTH:
		MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"Device not supported");
		break;
	default:
		break;
	}
}
void USB_DEV_permanent_erro(void)
{

}

void MSC_DEV_valid_config(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rConfiguring MSC device...");
}

void MSC_DEV_ready(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rMSC device ready for transfers");
	g_msc_driver_ready = 1u;
}

void MSC_DEV_driver_released(void)
{
	g_msc_driver_released = 1u;
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\rUSBH MSC driver released\n\r");

}

void MSC_DEV_error(int8_t error_code)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\rMSC device error");
}





static void isp_operations_menu(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\rSelect ISP operation mode ");
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\r   0) Authenticate");
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\r   1) Program");
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\r   2) Verify\n\r");

}
static void select_file_menu(void)
{
	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\n\n\r Choose the file out of above listed files by its index ('0' onwards)\n\r");
}



void isp_completion_handler(uint32_t value)
{
	g_error_flag = value;
	g_isp_operation_busy = 0;
}

/*==============================================================================
  UART selection.
  Replace the line below with this one if you want to use UART1 instead of
  uart1:
  mss_uart_instance_t * const gp_my_uart = &g_mss_uart1;
 */


/*==============================================================================
  Main function.
 */
static uint32_t read_page_from_USB
(
		uint8_t * g_buffer,
		uint32_t length
)
{
	uint32_t num_bytes;

	num_bytes = length;
	FRESULT res;

	res = f_read(&fsrc, g_buffer, length, (UINT*)&num_bytes);
	if(g_src_image_target_address%NOTIFY == 0)
		MSS_UART_polled_tx_string(gp_my_uart,(const uint8_t*)".");
	g_src_image_target_address += num_bytes;

	return num_bytes;






}
uint32_t page_read_handler
(
		uint8_t const ** pp_next_page
)
{

	uint32_t length;
	length = read_page_from_USB(g_page_buffer, BUFFER_SIZE);
	*pp_next_page = g_page_buffer;

	return length;
}



void press_any_key(void)
{
	uint8_t rx_size = 0;
	uint8_t rx_data = 0;

	MSS_UART_polled_tx_string(gp_my_uart,(uint8_t *)"\r\nPress any key to continue...");
	do {
		rx_size = MSS_UART_get_rx(gp_my_uart, &rx_data,1);
	} while(rx_size == 0);

}

