#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.



package 'httpd' do
  action :install
end


file '/var/www/html/index.html' do
  content 'Hope you are enjoying DevOps!! Testing Roles!! Testing Roles again'
  action :create
end

service 'httpd' do
  action [:enable, :start]
end
