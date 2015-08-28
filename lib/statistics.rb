class Array
  def mean
    (self.inject(0){|sum, n| sum + n.to_f} / self.size).round(2)
  end

  def median
    self.sort[self.size / 2]
  end

  def mode
    self.each_with_object({}) do |a, hash| 
      hash[a] = self.count{|b| a == b}
    end
    .max_by{|key, value| value}.first
  end
end