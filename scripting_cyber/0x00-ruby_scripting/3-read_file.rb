require 'json'

def count_user_ids(path)

  file_content = File.read(path)
  data = JSON.parse(file_content)


  user_ids = Hash.new(0)

  data.each do |item|
    user_id = item['userId']
    user_ids[user_id] += 1
  end

  user_ids.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end

end
