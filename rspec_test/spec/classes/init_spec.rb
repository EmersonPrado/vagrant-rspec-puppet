require 'spec_helper'

describe 'rspec_test' do

  context 'with ensure => absent' do

    let(:params) do {
      'ensure'     => 'absent',
      'type_title' => 'any_title',
    } end

    it { is_expected.to compile }
    it { is_expected.to create_class('rspec_test')}
    it { is_expected.not_to contain_rspec_test__type('any_title') }

  end

  context 'with ensure => present' do

    let(:params) do {
      'ensure'     => 'present',
      'type_title' => 'any_title',
    } end

    it { is_expected.to compile }
    it { is_expected.to create_class('rspec_test')}
    it { is_expected.to contain_rspec_test__type('any_title') }

  end

  context 'with ensure => invalid' do

    let(:params) do {
      'ensure'     => 'invalid',
      'type_title' => 'any_title',
    } end

    it { is_expected.to compile.and_raise_error(//) }

  end

  context 'with type_title => number' do

    let(:params) do {
      'ensure'     => 'present',
      'type_title' => 0,
    } end

    it { is_expected.to compile.and_raise_error(//) }

  end

end
