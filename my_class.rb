class MyClass
include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    @list.each {|element| yield(element)} # [1, 2, 3, 4]
  end
end
