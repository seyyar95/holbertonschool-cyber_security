#!/usr/bin/env ruby
require 'json'

def count_user_ids(file)
  file_content = File.read(file)
  data_hash = JSON.parse(file_content)
  new_hash = data_hash.each_with_object(Hash.new(0)) {|h1, h2| h2[h1['userId']] += 1}
  new_hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end
