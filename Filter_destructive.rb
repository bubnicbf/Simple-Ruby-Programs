#Select certain elements from an Array into a new Array in a generic way. 
#  To demonstrate, select all even numbers from an Array.

#As an option, give a second solution which filters destructively, by modifying the original 
#  Array rather than creating a new Array.

#Array#select! is the destructive version which modifies the original Array. Array#select! is new to Ruby 1.9.2.
ary = [1, 2, 3, 4, 5, 6]
ary.select! {|elem| elem.even?}
p ary # => [2, 4, 6]

=begin
# Array#select! is new to Ruby 1.9.2.
# Define it for older Ruby.
unless Array.method_defined? :select!
  class Array
    def select!
      enum_for(:select!) unless block_given?
      delete_if { |elem| not yield elem }
      self
    end
  end
end
=end
