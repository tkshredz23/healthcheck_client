Gem::Specification.new do |s|
  s.name = %q{healthcheck_client}
  s.version = "0.0.0"
  s.date = %q{2017-12-07}
  s.summary = %q{client for the healthcheck app}
  s.files = [
    "lib/healthcheck_client.rb"
  ]
  s.require_paths = ["lib"]

  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'

  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-byebug'
end
