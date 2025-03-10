# aclk {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0} aclk2 {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0} aclk3 {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0} aclk4 {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0}
# Clock Domain: /clk_wiz_0_clk_out1
create_clock -name aclk -period 6.734 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 1 [get_ports aclk1]
create_generated_clock -name aclk2 -source [get_ports aclk] -divide_by 1 [get_ports aclk2]
create_generated_clock -name aclk3 -source [get_ports aclk] -divide_by 1 [get_ports aclk3]
create_generated_clock -name aclk4 -source [get_ports aclk] -divide_by 1 [get_ports aclk4]
