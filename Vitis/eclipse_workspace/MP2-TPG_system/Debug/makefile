#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/Users/connero/Downloads/cpre488-mp2/Vitis/eclipse_workspace/TPG/export/TPG/TPG.xpfm
SYS_CONFIG = TPG
DOMAINS = standalone_domain
BIF_PATH = C:/Users/connero/Downloads/cpre488-mp2/Vitis/eclipse_workspace/MP2-TPG_system/Debug/system.bif

BITSTREAM_PATH = C:/Users/connero/Downloads/cpre488-mp2/Vitis/eclipse_workspace/MP2-TPG/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf C:/Users/connero/Downloads/cpre488-mp2/Vitis/eclipse_workspace/MP2-TPG/Debug/MP2-TPG.elf,ps7_cortexa9_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 62309 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


