# encoding: utf-8

require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'workflow_support::disk' do
  context 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['workflow_support']['dbdisk']['disk'] = '/dev/sdb'
        node.set['workflow_support']['dbdisk']['path_mount_point_loc'] = '/htdocs'
      end.converge(described_recipe)
    end

    it 'includes recipe lvm' do
      expect(chef_run).to include_recipe('lvm::default')
    end

    it 'creates lvm_volume_group docroot' do
      expect(chef_run).to create_lvm_volume_group('docroot')
    end

  end
end

