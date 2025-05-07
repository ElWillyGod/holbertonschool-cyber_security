#!/usr/bin/env ruby
require 'json'

def merge_json_files(file1_path, file2_path)
  file1 = File.read(file1_path)
  file2 = File.read(file2_path)

  data1 = JSON.parse(file1)
  data2 = JSON.parse(file2)

  data = data2 + data1

  File.open(file2_path, 'w') do |f|
    f.write(JSON.pretty_generate(data))
  end

  puts "Merged JSON written to #{file2_path}"
end
