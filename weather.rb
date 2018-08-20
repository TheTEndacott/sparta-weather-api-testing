require 'httparty'
require 'json'
require_relative "spec/spec_helper.rb"
require_relative "services/weather_service.rb"

class OpenWeatherMap

  def weather_service
    WeatherService.new
  end

end