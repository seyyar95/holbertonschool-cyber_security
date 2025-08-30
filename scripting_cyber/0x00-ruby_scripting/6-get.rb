#!/usr/bin/env ruby
require 'net/http'
require 'json'

def get_request(url)
  uri = URI.parse(url)
  res = Net::HTTP.get_response(uri)
  body = JSON.pretty_generate(res.body)
  puts "Response status: #{res.code} #{res.message}\nResponse body:\n#{body}"
end
