#
# Cookbook Name:: workflow_apache_support
# Recipe:: docroot
#
# Copyright 2015, Gannett
#
# Disk recipe for workflow_apache_support
#

if !node['workflow_support']['docroot']['disk'].nil? && File.exist?(node['workflow_support']['docroot']['disk'])
  case node['platform']
  when 'redhat', 'centos', 'amazon', 'scientific'
    include_recipe 'workflow_apache_support::disk'
  end
else
  directory node['workflow_support']['docroot']['mount_point'] do
    owner node['apache']['user']
    group node['apache']['group']
    mode '0755'
    action :create
  end
end
