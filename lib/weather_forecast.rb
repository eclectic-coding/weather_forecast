# frozen_string_literal: true

require 'faraday'
require 'weather_forecast/version'

# Gem Module
module WeatherForecast
  autoload :CLI, 'weather_forecast/cli'
  autoload :Client, 'weather_forecast/client'

  class Error < StandardError; end
end
