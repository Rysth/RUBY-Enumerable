class MyClass
include MyEnumerable
  def initialize(*list)
    @list = list
  end
end

list = MyClass.new(1, 2, 3, 4)