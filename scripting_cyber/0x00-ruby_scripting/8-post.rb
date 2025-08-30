#!/usr/bin/env ruby
require 'net/http'
require 'json'

def post_request(url, body_params)
  uri = URI(url)
  request = Net::HTTP::Post.new(uri)
  request['Content-Type'] = 'application/json'
  request.body = body_params.to_json unless body_params.empty?

  Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
    response = http.request(request)
    body = JSON.parse(response.body)
    puts "Response status: #{response.code} #{response.message}"
    puts "Response body:\n#{JSON.pretty_generate(body)}"
  end
end
