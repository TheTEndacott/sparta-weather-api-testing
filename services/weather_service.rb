require "httparty"
require "json"
require_relative "../spec/spec_helper.rb"

class WeatherService
  attr_accessor :weather_results
  include HTTParty

  def get_weather(city_name)
    @api_key = ENV["WEATHER_API_KEY"]
    @weather_results = JSON.parse(HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_name}&APPID=#{@api_key}").body)
  end

  # HERE BE METHODS

  def get_status
    @weather_results["cod"]
  end

  def get_type
    @weather_results
  end

  def get_city_longitude
    @weather_results["coord"]["lon"]
  end

  def get_city_latitude
    @weather_results["coord"]["lat"]
  end

  def get_city_weather_main
    @weather_results["weather"][0]["main"]
  end

  def get_city_weather_description
    @weather_results["weather"][0]["description"]
  end

  def get_city_main_temperature
    @weather_results["main"]["temp"]
  end

  def get_city_main_pressure
    @weather_results["main"]["pressure"]
  end

  def get_city_main_humidity
    @weather_results["main"]["humidity"]
  end

  def get_city_main_visibility
    @weather_results["visibility"]
  end

  def get_city_wind_type
    @weather_results["wind"]
  end

  def get_city_wind_speed
    @weather_results["wind"]["speed"]
  end

  def get_city_wind_degrees
    @weather_results["wind"]["deg"]
  end

  def get_country_code_length
    @weather_results["sys"]["country"].length
  end

  def get_city_id
    @weather_results["id"]
  end

  def get_city_name
    @weather_results["name"]
  end

end

#{"coord"=>{"lon"=>-0.13, "lat"=>51.51}, "weather"=>[{"id"=>803, "main"=>"Clouds", "description"=>"broken clouds", "icon"=>"04d"}], "base"=>"stations", "main"=>{"temp"=>295.69, "pressure"=>1020, "humidity"=>57, "temp_min"=>294.15, "temp_max"=>297.15}, "visibility"=>10000, "wind"=>{"speed"=>2.6, "deg"=>240, "gust"=>7.7}, "clouds"=>{"all"=>75}, "dt"=>1534762200, "sys"=>{"type"=>1, "id"=>5091, "message"=>0.0047, "country"=>"GB", "sunrise"=>1534740868, "sunset"=>1534792322}, "id"=>2643743, "name"=>"London", "cod"=>200}