#!/usr/bin/env ruby
require 'net/http'

def get_request(url)
  uri = URI.parse(url)
  res = Net::HTTP.get_response(uri)
  puts "Response status: #{res.code} #{res.message}\nResponse body:\n#{res.body}"
end
