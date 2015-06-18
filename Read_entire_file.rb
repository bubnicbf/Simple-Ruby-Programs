#IO.read is for text files. It uses the default text encodings, and on Microsoft Windows, it also converts "\r\n" to "\n".

# Read entire text file.
str = IO.read "foobar.txt"
 
# It can also read a subprocess.
str = IO.read "| grep ftp /etc/services"
