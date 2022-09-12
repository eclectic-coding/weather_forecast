# frozen_string_literal: true

module WeatherForecast
  # Set up customer CLI
  class CLI
    def call
      puts "Running Weather Forecast...#{ENV['WEATHER_API_KEY']}"
      menu
    end

    def menu
      input_city = 'Leland, NC'
      puts "Menu - #{input_city}"
    end
  end
end
