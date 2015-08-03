# encoding: utf-8

require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'workflow_support::homepage' do
  context 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['apache']['docroot_dir'] = '/htdocs'
      end.converge(described_recipe)
    end

    it 'creates template /htdocs/index.html' do
      expect(chef_run).to create_template('/htdocs/index.html')
    end
  end
end

