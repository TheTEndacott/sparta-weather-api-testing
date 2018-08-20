require "rspec"
require "json"
require "dotenv"
require "httparty"
require_relative "../weather"
Dotenv.load(".env")

RSpec.configure do |config|
  config.formatter = :documentation
end
