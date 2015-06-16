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
