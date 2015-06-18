IO.foreach "foobar.txt" do |line|
  # Do something with line.
  puts line
end

# File inherits from IO, so File.foreach also works.
File.foreach("foobar.txt") {|line| puts line}

# IO.foreach and File.foreach can also read a subprocess.
IO.foreach "| grep afs3 /etc/services" do |line|
  puts line
end
#Caution! IO.foreach and File.foreach take a portname. To open an arbitrary filename (which might start with "|"), 
#  you must use File.open, then IO#each (or IO#each_line). The block form of File.open automatically closes the 
#  file after running the block.
filename = "|strange-name.txt"
File.open(filename) do |file|
  file.each {|line| puts line}
end
