require 'degest'

def crack(hash, dictionary)

  File.foreach(dictionary) do |line|

    password = line.strip
    hashed = Digest::SHA256.hexdigest(password)

    if (hashed == hash)
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
