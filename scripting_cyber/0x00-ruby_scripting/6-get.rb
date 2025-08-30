#!/usr/bin/env ruby
require 'net/http'

def get_request(url)
  url = URI.parse(url)
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) { | http | http.request(req)}
  puts "Response status: #{res.code} OK\nResponse body: #{res.body}"
end
