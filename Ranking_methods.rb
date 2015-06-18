#The numerical rank of competitors in a competition shows if one is better than, equal to, or worse 
#  than another based on their results in a competition.

#The numerical rank of a competitor can be assigned in several different ways.

#Task
#The following scores are accrued for all competitors of a competition (in best-first order):
#    44 Solomon
#    42 Jason
#    42 Errol
#    41 Garry
#    41 Bernard
#    41 Barry
#    39 Stephen

=begin
For each of the following ranking methods, create a function/method/procedure/subroutine... that applies 
    the ranking method to an ordered list of scores with scorers:

  - Standard. (Ties share what would have been their first ordinal number).
  - Modified. (Ties share what would have been their last ordinal number).
  - Dense. (Ties share the next available integer).
  - Ordinal. ((Competitors take the next available integer. Ties are not treated otherwise).
  - Fractional. (Ties share the mean of what would have been their ordinal numbers).
=end
  
  ar = "44 Solomon
42 Jason
42 Errol
41 Garry
41 Bernard
41 Barry
39 Stephen".lines.map{|line| line.split}
 
grouped = ar.group_by{|pair| pair.delete_at(0).to_i}
s_rnk = 1
m_rnk =  o_rnk = f_rnk = 0
puts "stand.\tmod.\tdense\tord.\tfract."
 
grouped.each.with_index do |(score, names), i|
  d_rnk = i + 1 
  m_rnk += names.flatten!.size
  f_rnk = (s_rnk + m_rnk)/2.0
  names.each do |name|
    o_rnk += 1
    puts "#{s_rnk}\t#{m_rnk}\t#{d_rnk}\t#{o_rnk}\t#{f_rnk.to_s.gsub(".0","")}\t#{score} #{name}"
  end
  s_rnk += names.size
end

=begin
Output:
stand.    mod.    dense    ord.    fract.
1         1       1        1       1        44 Solomon
2         3       2        2       2.5      42 Jason
2         3       2        3       2.5      42 Errol
4         6       3        4       5        41 Garry
4         6       3        5       5        41 Bernard
4         6       3        6       5        41 Barry
7         7       4        7       7        39 Stephen
=end
