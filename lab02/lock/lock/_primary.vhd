library verilog;
use verilog.vl_types.all;
entity lock is
    port(
        x0              : in     vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        clk             : in     vl_logic;
        clean           : in     vl_logic;
        unlock          : out    vl_logic;
        lock            : out    vl_logic;
        a1              : out    vl_logic;
        a2              : out    vl_logic;
        a3              : out    vl_logic;
        a4              : out    vl_logic
    );
end lock;
