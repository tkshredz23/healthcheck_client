module HealthcheckClient
  class Status
    extend HealthcheckClient::Request
    class << self
      def update(params)
        post(:status, params)
      end
    end
  end
end
