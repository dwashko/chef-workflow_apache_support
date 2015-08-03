#
# Cookbook Name:: workflow_apache_support
# Recipe:: disk
#
# Copyright 2015, Gannett
#
# Disk recipe for workflow_apache_support 
#

include_recipe 'lvm::default'

lvm_volume_group 'docroot' do
  physical_volumes [node['workflow_support']['dbdisk']['disk']]
  logical_volume 'docroot' do
    group 'docroot'
    size '100%VG'
    filesystem node['workflow_support']['dbdisk']['filesystem_type']
    mount_point location: node['workflow_support']['dbdisk']['path_mount_point_loc'], options: node['workflow_support']['dbdisk']['path_mount_point_opt']
  end
end
