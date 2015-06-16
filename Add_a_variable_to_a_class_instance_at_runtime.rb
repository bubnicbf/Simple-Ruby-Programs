#dynamically add variables to an object (a class instance) at runtime.

#This is useful when the methods/variables of an instance are based on a data file that isn't available 
#  until runtime. Hal Fulton gives an example of creating an OO CSV parser at An Exercise in Metaprogramming 
#  with Ruby. This is referred to as "monkeypatching" by Pythonistas and some others.

class Empty
end
 
e = Empty.new
class << e
  attr_accessor :foo
end
e.foo = 1
puts e.foo  # output: "1"
 
f = Empty.new
f.foo = 1   # raises NoMethodError

#class << e" uses the singleton class of "e", which is an automatic subclass of Empty that has only 
#  this single instance. Therefore we added the "foo" accessor only to "e", not to other instances of Empty. 
#  Another way of adding a method to a singleton is:

yes_no = "Yes"
 
def yes_no.not
  replace( self=="Yes" ? "No": "Yes")
end
 
#Demo:
p yes_no.not # => "No"
p yes_no.not # => "Yes"
p "aaa".not  # => undefined method `not' for "aaa":String (NoMethodError)
