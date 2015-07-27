class Squares
  attr_reader :end_num

  def initialize end_num
    @end_num = end_num
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def sum_of_squares
    return_val = 0
    1.upto(@end_num){|num| return_val += num ** 2 }
    return_val
  end

  def square_of_sums
    _val = 0
    1.upto(@end_num){|num| _val += num }
    _val ** 2
  end

end
