class Hamming
  VERSION = 1
  def self.compute(original, mutation)
    raise ArgumentError, "Arguments must be of the same length" unless original.length == mutation.length
    distance = 0
    loop_count = 0
    original.each_char{ |str|
      distance += 1 if str != mutation[loop_count]
      loop_count += 1
    }
    distance
  end
end
