# TCL File Generated by Component Editor 12.1sp1
# Sat Sep 20 04:06:37 PDT 2014
# DO NOT MODIFY


# 
# ARM9_soft_core "ARM9_SOFT_CORE" v1.0
# zhizhouli 2014.09.20.04:06:37
# 
# 

# 
# request TCL package from ACDS 12.1
# 
package require -exact qsys 12.1


# 
# module ARM9_soft_core
# 
set_module_property NAME ARM9_soft_core
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Lophilo/HPS
set_module_property AUTHOR zhizhouli
set_module_property DISPLAY_NAME ARM9_SOFT_CORE
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL arm9_soft
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file arm9_soft.v VERILOG PATH arm9_soft.v
add_fileset_file arm9_compatiable_code.v VERILOG PATH arm9_compatiable_code.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point mrst
# 
add_interface mrst reset start
set_interface_property mrst associatedClock mclk
set_interface_property mrst associatedDirectReset ""
set_interface_property mrst associatedResetSinks ""
set_interface_property mrst synchronousEdges DEASSERT
set_interface_property mrst ENABLED true

add_interface_port mrst rso_MRST_reset reset Output 1


# 
# connection point mclk
# 
add_interface mclk clock start
set_interface_property mclk associatedDirectClock ""
set_interface_property mclk clockRate 660000
set_interface_property mclk clockRateKnown false
set_interface_property mclk ENABLED true

add_interface_port mclk cso_MCLK_clk clk Output 1


# 
# connection point m1
# 
add_interface m1 avalon start
set_interface_property m1 addressUnits SYMBOLS
set_interface_property m1 associatedClock mclk
set_interface_property m1 associatedReset mrst
set_interface_property m1 bitsPerSymbol 8
set_interface_property m1 burstOnBurstBoundariesOnly false
set_interface_property m1 burstcountUnits WORDS
set_interface_property m1 doStreamReads false
set_interface_property m1 doStreamWrites false
set_interface_property m1 holdTime 0
set_interface_property m1 linewrapBursts false
set_interface_property m1 maximumPendingReadTransactions 0
set_interface_property m1 readLatency 0
set_interface_property m1 readWaitTime 1
set_interface_property m1 setupTime 0
set_interface_property m1 timingUnits Cycles
set_interface_property m1 writeWaitTime 0
set_interface_property m1 ENABLED true

add_interface_port m1 avm_M1_writedata writedata Output 32
add_interface_port m1 avm_M1_readdata readdata Input 32
add_interface_port m1 avm_M1_address address Output 30
add_interface_port m1 avm_M1_byteenable byteenable Output 4
add_interface_port m1 avm_M1_write write Output 1
add_interface_port m1 avm_M1_read read Output 1
add_interface_port m1 avm_M1_begintransfer begintransfer Output 1
add_interface_port m1 avm_M1_readdatavalid readdatavalid Input 1
add_interface_port m1 avm_M1_waitrequest waitrequest Input 1


# 
# connection point events
# 
add_interface events interrupt start
set_interface_property events associatedAddressablePoint ""
set_interface_property events associatedClock mclk
set_interface_property events associatedReset mrst
set_interface_property events irqScheme INDIVIDUAL_REQUESTS
set_interface_property events ENABLED true

add_interface_port events inr_EVENTS_irq irq Input 10


# 
# connection point ctrl
# 
add_interface ctrl conduit end
set_interface_property ctrl associatedClock mclk
set_interface_property ctrl associatedReset mrst
set_interface_property ctrl ENABLED true

add_interface_port ctrl coe_M1_CLK export Input 1
add_interface_port ctrl coe_M1_RSTN export Input 1

