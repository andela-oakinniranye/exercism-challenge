class Year
  def self.leap? year
    is_leap = false
    if year % 4 == 0
      is_leap = true unless year % 100 == 0 && year % 400 != 0
    end
    is_leap
  end
end
