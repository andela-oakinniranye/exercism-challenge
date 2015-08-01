class Robot
  attr_reader :name
  @@all_robots= Hash.new(0)
  def initialize
    reset
  end
  def reset
    loop {
      @name = ('AA'..'ZZ').to_a.shuffle![1] << sprintf("%.3i", rand(000..999))
      @@all_robots[@name] += 1
      break if @@all_robots[@name] == 1
     }
  end
end
