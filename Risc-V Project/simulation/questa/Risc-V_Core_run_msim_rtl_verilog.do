transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/RiscV_Core.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/RiscV_Defines&Packages.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/decode.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/execute.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/IRAM.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/issue.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/memaccess.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/writeback.sv}
vlog -sv -work work +incdir+/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V\ Project/Verilog\ Source {/home/drewarosa/git_repos/FPGA-Adventures-Source-Code/Risc-V Project/Verilog Source/fetch.sv}

