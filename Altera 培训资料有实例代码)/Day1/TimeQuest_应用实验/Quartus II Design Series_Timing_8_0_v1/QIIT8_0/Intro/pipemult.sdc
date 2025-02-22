create_clock -period 6 -name clk1 [get_ports {clk1}]
set_input_delay -clock { clk1 } -max 3.25 [get_ports data*]
set_input_delay -clock { clk1 } -min 1.75 [get_ports data*]
set_output_delay -clock { clk1 } -max 0.7 [get_ports {q*}]
set_output_delay -clock { clk1 } -min 0.0 [get_ports {q*}]
set_input_delay -clock { clk1 } -max 2.5 [get_ports {rdaddress* wraddress*}]
set_input_delay -clock { clk1 } -min 1.0 [get_ports {rdaddress* wraddress*}]
set_input_delay -clock { clk1 } -max 2.5 [get_ports {wren}]
set_input_delay -clock { clk1 } -min 1.0 [get_ports {wren}]