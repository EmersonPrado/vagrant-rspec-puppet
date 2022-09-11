require 'spec_helper'

describe 'rspec_test' do

  it { is_expected.to compile }
  it { is_expected.to create_class('rspec_test')}

end
