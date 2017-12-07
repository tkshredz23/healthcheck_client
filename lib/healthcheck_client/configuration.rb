module HealthcheckClient
  module Configuration
    DEFAULT_ENDPOINT = "".freeze

    VALID_OPTIONS_KEYS = [ :email, :password, :endpoint ]

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def reset
      self.email = nil
      self.password = nil
      self.endpoint = nil
      self
    end

    def configure
      yield self
      self
    end
  end
end
