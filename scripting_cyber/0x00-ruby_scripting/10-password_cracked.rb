require 'degest'

def crack(hashed_password,dictionary_file)


  File.foreach(dictionary_file) do |line|

    password = line.strip
    hashed = Digest::SHA256.hexdigest(password)

    if (hashed == hashed_password)
      puts "Password found: #{password}"
      return
    end
  end

  puts "Password not found in dictionary."

end

if ARGV.length != 2
  puts "Usage: 10-password_cracked.rb HASHED_PASSWORD DICTIONARY_FILE"
  exit
end

crack(ARGV[0], ARGV[1])
