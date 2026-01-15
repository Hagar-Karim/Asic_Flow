puts " **** String Manipulation Lab **** "
set str1 MahmoudAhmed@gmail.com
set str2 MostafaAli@hotmail.com
set var1 [string length $str1]
puts "The length of str1 is [string length $str1]"
set var2 [string last @ $str1]
set var3 [expr $var2 - 1]
set var4 [string range $str1 0 $var3]
set var5 [string toupper $var4]
puts "str1 Email Name is $var5"
set var6 [string first @ $str2]
set var7 [string last . $str2]
set var8 [expr $var6 + 1]
set var9 [expr $var7 - 1]
set var10 [string range $str2 $var8 $var9]
puts "Domain Name of str2 is $var10"
append var4 @hotmail.com
puts "the new mail address is $var4"
set var11 [string match *gmail* $str1]
if {$var11} {
    puts "it is a gmail account"
} else {
    puts "it is not a gmail account"
}


