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

  def filter
    result = []
    each do |element|
      result.push(element) if yield(element)
    end
    result
  end
end
