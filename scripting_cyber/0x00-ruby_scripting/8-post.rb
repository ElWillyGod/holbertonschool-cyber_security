require 'net/http'
require 'json'
require 'uri'

def post_request(url, body_params)
  uri = URI.parse(url)

  http = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https')

  request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })
  request.body = body_params.to_json

  response = http.request(request)

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:\n#{response.body}"
end
