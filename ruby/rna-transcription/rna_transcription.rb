class Complement

#symbols are faster to read than string, therefore symbols are being used here
  @strands = { G: :C, C: :G, T: :A, A: :U }

  def self.of_dna(str)
    ret_str = ""
    str.each_char do |w|
      raise ArgumentError, "Invalid DNA strand given" unless @strands.has_key?(w.to_sym)
      ret_str << @strands[w.to_sym].to_s
    end
    ret_str
  end

  def self.of_rna(str)
    ret_str = ""
    str.each_char do |w|
      raise ArgumentError, "Invalid RNA strand given" unless @strands.has_value?(w.to_sym)
        ret_str << @strands.key(w.to_sym).to_s
    end
    ret_str
  end

end
