#
# Cookbook Name:: workflow_apache_support
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'iptables'

iptables_rule 'workflow' do
  source 'iptables/workflow'
end
