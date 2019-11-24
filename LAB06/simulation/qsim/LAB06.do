onerror {exit -code 1}
vlib work
vlog -work work LAB06.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.LAB06_vlg_vec_tst
vcd file -direction LAB06.msim.vcd
vcd add -internal LAB06_vlg_vec_tst/*
vcd add -internal LAB06_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
