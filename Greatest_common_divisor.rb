#This task requires the finding of the greatest common divisor of two integers.

#irb(main):001:0> 40902.gcd(24140)
#=> 34

#Here's an implementation:

def gcd(u, v)
  u, v = u.abs, v.abs
  while v > 0
    u, v = v, u % v
  end
  u
end
