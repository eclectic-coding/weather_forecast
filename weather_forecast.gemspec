# frozen_string_literal: true

require_relative 'lib/weather_forecast/version'

Gem::Specification.new do |spec|
  spec.name = 'weather_forecast'
  spec.version = WeatherForecast::VERSION
  spec.authors = ['Chuck Smith']
  spec.email = ['chuck@eclecticsaddlebag.com']

  spec.summary = 'Write a short summary, because RubyGems requires one.'
  spec.description = 'Write a longer description or delete this line.'
  spec.homepage = 'https://github.com/eclectic-coding/weather_forecast'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/eclectic-coding/weather_forecast'
  spec.metadata['changelog_uri'] = 'https://github.com/eclectic-coding/weather_forecast/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 2.3'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
