# encoding: utf-8

require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'workflow_apache_support::default' do
  context 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end

    it 'includes recipe iptables' do
      expect(chef_run).to include_recipe('iptables')
    end
  end
end

