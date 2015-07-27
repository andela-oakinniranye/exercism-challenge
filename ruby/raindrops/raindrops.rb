class Raindrops
  def self.convert num
    divisors = {Pling: 3, Plang: 5, Plong: 7}
    return_val = ''
    divisors.each{|rain, div| return_val << rain.to_s if num % div == 0}
    return_val = num.to_s if return_val.empty?
    return_val
  end
end
