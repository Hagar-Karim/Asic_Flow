puts "This is My First Script"
set var0 25
set var1 50
puts "The Value of var0 is $var0"
puts "The Value of var1 is $var1"
set var2 [expr $var1*2]
puts "The Value of var2 is $var2"
puts {The Value of var2 is "$var2"}
puts "The Value of var2 is \$var2"
set var3 "8"
set var4 "8"
set var5 [expr  {$var3 && $var4} ]
puts $var5