require 'watir'
require 'rspec'
require_relative '../personal_info_form'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end