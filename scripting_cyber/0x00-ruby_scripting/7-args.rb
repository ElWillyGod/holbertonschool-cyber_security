def print_arguments
  if ARGV.empty?
    puts "No arguments provided."
    return
  puts "Arguments:"
  ARGV.each_with_index do |arg, index|
    puts "#{index + 1}. #{arg}"
  end
end
