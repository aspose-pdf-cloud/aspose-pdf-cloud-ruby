require 'faraday'
Faraday.default_connection_options = Faraday::ConnectionOptions.new(
  request: {
    timeout: ENV['FARADAY_TIMEOUT'].to_i
  }
)