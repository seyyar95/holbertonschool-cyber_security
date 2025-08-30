#!/usr/bin/env ruby
require 'net/http'
require 'json'

def get_request(url)
  uri = URI.parse(url)
  res = Net::HTTP.get_response(uri)
  body = JSON.parse(res.body)
  puts "Response status: #{res.code} #{res.message}\nResponse body:\n#{JSON.pretty_generate(body)}"
end
