#The task here is to read a CSV file, change some values and save the changes back to a file. 
#  For this task we will use the following CSV file:

=begin
C1,C2,C3,C4,C5
1,5,9,13,17
2,6,10,14,18
3,7,11,15,19
4,8,12,16,20
=end

require 'csv'
# read:
ar = CSV.table("test.csv").to_a #table method assumes headers and converts numbers if possible.
 
# manipulate:
ar.first << "SUM"
ar[1..-1].each{|row| row << row.inject(:+)}
 
# write:
CSV.open("out.csv", 'w') do |csv|
  ar.each{|line| csv << line}
end
