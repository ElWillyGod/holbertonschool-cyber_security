require 'json'

def merge_json_files(file1_path, file2_path)

  file1 = File.read(file1_path)
  data1 = JSON.parse(file1)


  file2 = File.read(file2_path)
  data2 = JSON.parse(file2)

  data = data1 + data2

  File.write(file2_path, JSON.pretty_generate(data))

  puts "Merged JSON written to #{file2_path}"

end
