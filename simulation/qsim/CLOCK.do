onerror {exit -code 1}
vlib work
vcom -work work CLOCK.vho
vcom -work work CLOCK.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.CLOCK_vhd_vec_tst
vcd file -direction CLOCK.msim.vcd
vcd add -internal CLOCK_vhd_vec_tst/*
vcd add -internal CLOCK_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
