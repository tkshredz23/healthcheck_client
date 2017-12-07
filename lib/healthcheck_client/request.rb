module HealthcheckClient
  module Request
    include HealthcheckClient::Connection

    def get(path, params={})
      request(:get, path, params)
    end

    def post(path, params={})
      request(:post, path, params)
    end

    private

    def request(method, path, params)
      params ||= {}

      response = connection.send(method, params)
    end
  end
end

