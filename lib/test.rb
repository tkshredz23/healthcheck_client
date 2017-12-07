require './healthcheck_client'

HealthcheckClient.configure do |client|
  client.endpoint = 'localhost:3000'
  client.token = "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1MTI3NTU5NDJ9.mDXPvyiSvEn345qu4EK5vPH5HI683q9PpSgeU4N4tBQ"
end

HealthcheckClient::Status.update("{ status: 'up' }")
