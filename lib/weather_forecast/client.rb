# frozen_string_literal: true

module WeatherForecast
  # initial connection to weather service
  class Client
    BASE_URL = 'https://weather.com'
    API_KEY = ENV.fetch('WEATHER_API_KEY', nil)

    attr_reader :api_key, :adapter

    def initialize(api_key: API_KEY, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter

      # test stubs for requests
      @stubs = stubs
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|

        conn.adapter adapter, @stubs
      end
    end
  end
end
