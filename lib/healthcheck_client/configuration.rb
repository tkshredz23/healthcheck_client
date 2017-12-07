module HealthcheckClient
  module Configuration
    VALID_OPTIONS_KEYS = [ :token, :endpoint ]

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def reset
      self.token = nil
      self.endpoint = nil
      self
    end

    def configure
      yield self
      self
    end
  end
end
