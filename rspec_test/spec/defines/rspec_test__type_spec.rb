require 'spec_helper'

describe 'rspec_test::type' do

  let(:title) { 'title' }

  it { is_expected.to compile }
  it { is_expected.to create_rspec_test__type('title') }

end
