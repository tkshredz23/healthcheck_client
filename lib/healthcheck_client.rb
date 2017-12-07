module HealthcheckClient
  autoload :Configuration, './healthcheck_client/configuration'
  autoload :Connection, './healthcheck_client/connection'
  autoload :Request, './healthcheck_client/request'
  autoload :Status, './healthcheck_client/status'

  extend Configuration
end
