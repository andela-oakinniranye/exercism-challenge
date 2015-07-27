class Fixnum
  
  def to_roman
    return if self < 1
    roman_helper = {M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1}
    roman = ''
    num = self
    roman_helper.each do |key, val|
      if num >= val
        roman << key.to_s * (num / val)
        num = num % val
      end
    end
    roman
  end
end
