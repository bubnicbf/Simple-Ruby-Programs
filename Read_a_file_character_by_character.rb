
File.open('input.txt', 'r:utf-8') do |f|
  f.each_char{|c| p c}
end

=begin
#old style of doing this
File.open('input.txt', 'r:utf-8') do |f|
  while c = f.getc
    p c
  end
end
=end
