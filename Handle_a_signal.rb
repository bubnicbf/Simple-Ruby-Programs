#Most general purpose operating systems provide interrupt facilities, sometimes called signals. 
#  Unhandled signals generally terminate a program in a disorderly manner. Signal handlers are created 
#  so that the program behaves in a well-defined manner upon receipt of a signal.

#For this task you will provide a program that displays a single integer on each line of output at the 
#  rate of one integer in each half second. Upon receipt of the SigInt signal (often created by the user 
#  typing ctrl-C) the program will cease printing integers to its output, print the number of seconds the 
#  program has run, and then the program will terminate.

t1 = Time.now
 
catch :done do
  Signal.trap('INT') do
    Signal.trap('INT', 'DEFAULT') # reset to default
    throw :done
  end
  n = 0
  loop do
    sleep(0.5)
    n += 1
    puts n
  end
end
 
tdelt = Time.now - t1
puts 'Program has run for %5.3f seconds.' % tdelt
