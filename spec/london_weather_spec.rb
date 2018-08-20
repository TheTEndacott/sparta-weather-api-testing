require 'spec_helper'

describe OpenWeatherMap do

  before (:all) do
    @openweather = OpenWeatherMap.new.weather_service
    @openweather.get_weather('London')
  end

  # HERE BE TESTS

  it "should respond with a status message of 200" do
    expect(@openweather.get_status).to eq(200)
  end

  it "should have a results hash" do
    expect(@openweather.get_type).to be_a(Hash)
  end

  it "should return a longitude that is a float" do
    expect(@openweather.get_city_longitude).to be_a(Float)
  end

  it "should return a latitude that is a float" do
    expect(@openweather.get_city_latitude).to be_a(Float)
  end

  it "should return a main weather that is a string" do
    expect(@openweather.get_city_weather_main).to be_a(String)
  end

  it "should return a weather description that is a string" do
    expect(@openweather.get_city_weather_description).to be_a(String)
  end

  it "should return a city temperature that is an float" do
    expect(@openweather.get_city_main_temperature).to be_a(Float)
  end

  it "should return a city pressure that is an integer" do
    expect(@openweather.get_city_main_pressure).to be_a(Integer)
  end

  it "should return a city humidity that is an integer" do
    expect(@openweather.get_city_main_humidity).to be_a(Integer)
  end

  it "should return a city visibility that is an integer" do
    expect(@openweather.get_city_main_visibility).to be_a(Integer)
  end

  it "should return a wind hash" do
    expect(@openweather.get_city_wind_type).to be_a(Hash)
  end

  it "should return a wind speed that is an float" do
    expect(@openweather.get_city_wind_speed).to be_a(Float)
  end

  it "should return a wind degree that is an integer" do
    expect(@openweather.get_city_wind_degrees).to be_a(Integer) || be_nil
  end

  it "should return a country code that is 2 characters long" do
    expect(@openweather.get_country_code_length).to eq(2)
  end


  it "should return a city id that is an integer" do
    expect(@openweather.get_city_id).to be_a(Integer)
  end

  it "should return a city name as a string" do
    expect(@openweather.get_city_name).to be_a(String)
  end

  it "should return the city name London" do
    expect(@openweather.get_city_name).to eq("London")
  end

end