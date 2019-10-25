library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        Load            : in     vl_logic;
        Count           : in     vl_logic;
        clk             : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        clean           : in     vl_logic;
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        CO              : out    vl_logic
    );
end counter;
