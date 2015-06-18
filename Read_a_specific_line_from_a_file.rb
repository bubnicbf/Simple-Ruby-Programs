#The each_line method returns an Enumerator, so no more than seven lines are read.

 seventh_line = open("/etc/passwd").each_line.take(7).last
 
