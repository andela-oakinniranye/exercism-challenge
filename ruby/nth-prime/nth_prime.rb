class Prime
  attr_reader :primes, :current_state

  @primes = [2]
  @current_state = @primes.max
  def self.nth val
    raise ArgumentError, 'You cannot get this' if val < 1
    get_next_prime until @primes.length >= val
    @primes[val - 1]
  end
  
  def self.get_next_prime
    is_prime = true
    @primes.each{|n|
      if @current_state % n == 0
        is_prime = false
        break
      end
    }
    @primes << @current_state if is_prime
    @current_state += 1
  end
end
