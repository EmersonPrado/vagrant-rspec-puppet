# Fixes warning "defaults `mock_with` to `:mocha`"
# https://github.com/puppetlabs/puppetlabs_spec_helper#mock_with
RSpec.configure do |c|
  c.mock_with :rspec
end

require 'puppetlabs_spec_helper/module_spec_helper'
