class Dragon
  puts 'What would you like to name your baby dragon?'
  name = gets.chomp

  puts "#{@name} is born"

while true
  puts
  puts 'commands: feed, walk, exit'
  command = gets.chomp

if command == 'exit'
  exit
elsif command == 'feed'
  puts "You feed #{@name}"

elsif command == 'walk'
  puts "You walked #{name}"
else
  puts 'Huh? Please type one of the commands.'
end
end
end