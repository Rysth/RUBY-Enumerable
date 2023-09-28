module MyEnumerable
  def all?
    each do |element| # 1
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end
end
