require 'spec_helper'

describe 'rspec_test' do

  let(:params) do {
    'type_title' => 'any_title',
  } end

  it { is_expected.to compile }
  it { is_expected.to create_class('rspec_test')}
  it { is_expected.to contain_rspec_test__type('any_title') }

end
