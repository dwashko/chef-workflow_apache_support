#
# Cookbook Name:: workflow_apache_support
# Recipe:: homepage
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

template "#{node['workflow_support']['docroot']['mount_point']}/index.html" do
  source 'index.html.erb'
  owner node['apache']['user']
  group node['apache']['group']
  mode '0644'
end
