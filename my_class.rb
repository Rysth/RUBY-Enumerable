class MyClass
include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each {|element| yield(element)} # [1, 2, 3, 4]
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
#<MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? {|e| e < 5}
list.all? {|e| e > 5}

# Test #any?
list.any? {|e| e == 2}
list.any? {|e| e == 5}

# Test #filter
list.filter {|e| e.even?}
