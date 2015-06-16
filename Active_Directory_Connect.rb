#establish a connection to an Active Directory or Lightweight Directory Access Protocol server.

#Similar to Tcl, assume the AD server talks LDAP.
#  There are many Ruby LDAP packages -- this solution uses Net::LDAP ("Pure Ruby LDAP Tools" on RubyForge, 
#  gem name "ruby-net-ldap")

#Library: RubyGems

require 'rubygems'
require 'net/ldap'
ldap = Net::LDAP.new(:host => 'ldap.example.com', :base => 'o=companyname')
ldap.authenticate('bind_dn', 'bind_pass')
