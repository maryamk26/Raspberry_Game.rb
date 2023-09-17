require_relative 'Raspberry'
require_relative 'RaspberryBush'
require_relative 'Human'

Human.knowledge_base

puts "Welcome to the Raspberry Gardening Game!"
puts "Enter your name:"
gardener_name = gets.chomp

raspberry_bush = RaspberryBush.new(5)
gardener = Human.new(gardener_name, raspberry_bush)

loop do
  puts "\nOptions:"
  puts "1. Work in the garden"
  puts "2. Harvest raspberries"
  puts "3. Check raspberry growth"
  puts "4. Add more raspberries"
  puts "5. Exit"

  choice = gets.chomp.to_i

  case choice
  when 1
    gardener.work!
    puts "#{gardener.name} is working in the garden."
  when 2
    gardener.harvest
    if gardener.plant.ripe_all?
      puts "You've harvested all ripe raspberries."
    else
      puts "It's too early to harvest, some raspberries are not ripe yet."
    end
  when 3
    puts "\nRaspberry Growth:"
    gardener.plant.raspberries.each do |raspberry|
      puts "Raspberry #{raspberry.index}: #{raspberry.state_description}"
    end
  when 4
    puts "Enter the number of raspberries to add:"
    num_raspberries = gets.chomp.to_i
    gardener.plant.add_raspberries(num_raspberries)
    puts "#{num_raspberries} raspberries added to the bush."
  when 5
    puts "Exiting the game. Goodbye, #{gardener.name}!"
    break
  else
    puts "Invalid choice. Please choose a valid option (1-5)."
  end
end
