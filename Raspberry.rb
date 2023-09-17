class Raspberry
@@states = [:Immature, :Veraison, :Pink, :Red]

  def self.states
    @@states
  end

  attr_reader :index, :state

  def initialize(index)
    @index = index
    @state = @@states[0]
  end

  def grow!
    if @state != @@states.last
      @state = @@states[@@states.index(@state) + 1]
    else
      puts "Raspberry #{@index} is already ripe!"
    end
  end

  def ripe?
    @state == @@states.last
  end

  def state_description
    case @state
    when :Immature
      "There's no raspberry here."
    when :Veraison
      "is flowering."
    when :Pink
      "is green and unripe."
    when :Red
      "is red and ripe!"
    else
      "No Raspberries here"
    end
  end
end
