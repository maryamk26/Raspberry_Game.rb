require_relative 'RaspberryBush'

class Human
attr_accessor :name,:plant

def initialize(name,plant)
@name = name
@plant = plant
end

def work!
  @plant.grow_all!
end

def harvest
  if @plant.ripe_all?
    puts "#{@name} is harvesting!"
    @plant.give_away_all!
  else
    puts "It's too early to harvest, some fruits are not ripe yet."
  end
end

@@knowledge_base
def self.knowledge_base
  puts "Gardening Help: Remember to plant raspberries in well-draining soil and provide them with plenty of sunlight!"
end
end
