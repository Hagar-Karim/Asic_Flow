puts " **** Arrays & Procedures **** "
array set Mohamed {Waves 70 Electronics 85 Control 65 Comm 78}
array set Ahmed   {Waves 66 Electronics 80 Control 88 Comm 69}
array set Mostafa {Waves 72 Electronics 77 Control 70 Comm 88}
set names_one  [array names Mohamed ]
set names_two  [array names Ahmed ]
set names_three  [array names Mostafa ]
proc Avg {x} {
  upvar $x arr
  set size  [array size arr]  
  set names [array names arr]
  set acc 0.0 
  foreach y $names {
    set acc [expr $acc + $arr($y)]
  }
set avg [expr $acc/$size]
return $avg
}

puts [Avg Mohamed]
puts [Avg Mostafa]
puts [Avg Ahmed]


