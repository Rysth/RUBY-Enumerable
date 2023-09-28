module MyEnumerable
  def all?
    each do |element| # 1
      return false unless yield(element)
    end
    true
  end
end
