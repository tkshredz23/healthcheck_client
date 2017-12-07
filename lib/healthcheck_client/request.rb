module HealthcheckClient
  module Request
    include HealthcheckClient::Connection

    def get(path, params={})
      request(:get, path, params)
    end

    def post(path, params={})
      request(:post, path, xml: to_xml(params))
    end

    def put(path, params={})
      request(:put, path, params)
    end

    private

    def request(method, path, params)
      params ||= {}
      params[:email] = HealthcheckClient.email
      params[:password] = HealthcheckClient.password

      endpoint = params.delete(:endpoint)

      response = connection.send(method, params)
    end
  end
end

