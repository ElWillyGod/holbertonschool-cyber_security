require 'net/http'
require 'uri'
require 'json'

def get_request(url)
  uri = URI.parse(url)
  response = Net::HTTP::get_response(uri)

  body = JSON.pretty_generate(JSON.parse(response.body))

  puts "Response status: #{response.code} #{response.message}"

  puts "Response body: \n#{body}"
end
