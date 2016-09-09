# Coverage
require 'simplecov'
require 'coveralls'

SimpleCov.minimum_coverage 90
SimpleCov.minimum_coverage_by_file 80
SimpleCov.add_filter '/spec/whatnow/'
SimpleCov.add_filter 'whatnow_spec.rb'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.at_exit do
  Dir.mkdir('coverage') unless Dir.exist?('coverage')
  SimpleCov.result.format!
end

SimpleCov.start do
  add_filter 'spec/dummy'
end

# Tests
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require File.expand_path('../dummy/config/environment', __FILE__)

require 'whatnow'
