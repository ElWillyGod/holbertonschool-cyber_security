require 'open-uri'
require 'uri'
require 'fileutils'

def download_file(url, destination)


  FileUtils.mkdir_p(File.dirname(destination))
  puts "Downloading file from #{url}..."

  URI.open(url) do |file|
    File.open(destination, 'wb') do |output|
      output.write(file.read)
    end
  end

  puts "File downloaded and saved to #{destination}"
end

  if ARGV.length != 2
    puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
    exit 1
  end

    download_file(ARGV[0], ARGV[1])
