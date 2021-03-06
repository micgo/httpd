require 'spec_helper'

describe 'crossplat_test::thing on ubuntu-10.04' do
  let(:ubuntu_10_04_default_run) do
    ChefSpec::Runner.new(
      :platform => 'ubuntu',
      :version => '10.04'
      ) do |node|
      node.set['crossplat']['thing']['resource_name'] = 'ubuntu_10_04_default'
    end.converge('crossplat_test::thing')
  end

  context 'when using default parameters' do
    it 'creates crossplat_thing[ubuntu_10_04_default]' do
      expect(ubuntu_10_04_default_run).to create_crossplat_thing('ubuntu_10_04_default')
    end
  end
end
