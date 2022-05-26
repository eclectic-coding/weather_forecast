# frozen_string_literal: true

require 'test_helper'

class TestWeatherForecast < Minitest::Test
  def it_has_a_version_number
    refute_nil ::WeatherForecast::VERSION
  end

  def it_does_something_useful
    assert false
  end
end
