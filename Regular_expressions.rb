#Test
str = "I am a string"
p "Ends with 'string'" if str =~ /string$/
p "Does not start with 'You'" unless str =~ /^You/

#Substitute
str.sub(/ a /, ' another ') #=> "I am another string"
# Or:
str[/ a /] = ' another '    #=> "another"
str                         #=> "I am another string"

#Substitute using block
str.gsub(/\bam\b/) { |match| match.upcase } #=> "I AM a string"
