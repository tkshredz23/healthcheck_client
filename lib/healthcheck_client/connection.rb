module HealthcheckClient
  module Connection
    def connection
      @connection ||= begin
        Faraday.new('localhost:3000') do |b|
          b.request :url_encoded

          b.response :rashify
          b.response :xml
          b.response :logger

          b.adapter Faraday.default_adapter
        end
      end
    end
  end
end
