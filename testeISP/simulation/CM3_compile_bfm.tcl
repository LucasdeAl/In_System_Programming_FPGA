# ===========================================================
# Created by Microsemi SmartDesign Wed Mar 19 16:31:40 2025
# 
# Warning: Do not modify this file, it may lead to unexpected 
#          simulation failures in your design.
#
# ===========================================================

if {$tcl_platform(os) == "Linux"} {
  exec "$env(ACTEL_SW_DIR)/bin64/bfmtovec" -in test.bfm -out test.vec
} else {
  exec "$env(ACTEL_SW_DIR)/bin64/bfmtovec.exe" -in test.bfm -out test.vec
}
