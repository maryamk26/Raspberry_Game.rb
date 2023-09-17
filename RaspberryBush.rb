class RaspberryBush
  attr_reader :raspberries

  def initialize(num_raspberries)
 @raspberries = (1..num_raspberries).map { |index| Raspberry.new(index) }
  end

  def grow_all!
    @raspberries.each(&:grow!)
  end

  def ripe_all?
    @raspberries.all?(&:ripe?)
  end

  def give_away_all!
    @raspberries.clear
  end

  def add_raspberries(num_raspberries)
    new_raspberries = (@raspberries.length + 1..@raspberries.length + num_raspberries).map do |index|
      Raspberry.new(index)
    end

    @raspberries.concat(new_raspberries)
  end
end
