puts "**** File I/O & Regsub Lab****"
set fh_0 [open interface.txt r]
set filedata [read $fh_0]
regsub -all "input" $filedata "reg" filedata
regsub -all "output" $filedata "wire" filedata
set inputs {IN Load Up Down CLK}
set outputs {High Counter Low}
foreach x $inputs {
  regsub -nocase -all "$x" $filedata "i_$x;" filedata
}
foreach x $outputs {
  regsub -all "$x" $filedata "o_$x;" filedata
}
puts $filedata
set fh_1 [open tb.txt w]
puts $fh_1 $filedata
close $fh_0
close $fh_1