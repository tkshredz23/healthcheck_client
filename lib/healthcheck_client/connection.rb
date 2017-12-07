require 'faraday'

module HealthcheckClient
  module Connection
    def connection
      @connection ||= begin
          ::Faraday.new(HealthcheckClient.endpoint) do |b|
          b.request :url_encoded

          b.response :rashify
          b.response :logger

          b.token_auth(HealthcheckClient.token)

          b.adapter ::Faraday.default_adapter
        end
      end
    end
  end
end
