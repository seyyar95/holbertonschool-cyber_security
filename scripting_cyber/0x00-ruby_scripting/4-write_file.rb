#!/usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
  content1 = File.read(file1_path)
  hash1 = JSON.parse(content1)
  content2 = File.read(file2_path)
  hash2 = JSON.parse(content2)
  
  merged_hash = hash2 + hash1
  
  File.open(file2_path, "w") do | file |
    file.write(JSON.pretty_generate(merged_hash))
  end
end
