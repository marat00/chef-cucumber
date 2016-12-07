#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2016, Mark Pern
#
# All rights reserved - Do Not Redistribute
#

user "mark" do  
	supports :manage_home => true  
	home "/home/mark"  
	shell "/bin/bash"
end

directory "/home/mark/.ssh" do  
	owner mark
	group mark
	mode "0700"
end

cookbook_file "/home/mark/.ssh/authorized_keys" do  
	source "authorized_keys"  
	owner mark
	group mark 
	mode "0600"
end