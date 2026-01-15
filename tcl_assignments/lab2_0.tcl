puts "**** List Operations Lab****"
set lst0 [list Jan Mar April May]
set lst1 {June July August}
puts $lst0
puts $lst1 
set llst0 [llength $lst0]
puts " Length of lst0 : $llst0 "
set lst13 [lindex $lst1 2]
puts " Third item of lst1 : $lst13 "
set search [lsearch $lst1 Oct]
if {$search != -1} {
    puts "Oct is existed in the list"
} else {
    puts "Oct not existed in the list"
}
set lst0 [linsert $lst0 1 Feb] 
puts $lst0
lappend lst1 Sep Oct Nov Dec
puts $lst1
set lst2 [concat $lst0 $lst1]
set var0 [expr [llength $lst2] - 1]
puts [lrange $lst2 0 $var0]
puts [join $lst2 ","]
set var1 [llength $lst0]
for {set var2 0} {$var2 < $var1} {incr var2} {
    set var3 [lindex $lst0 $var2]
    puts "[string toupper $var3 ] "
    
}

foreach x $lst1 {
    puts "[string tolower $x] "
   
}
