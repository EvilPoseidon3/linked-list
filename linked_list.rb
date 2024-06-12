class LinkedList

  def initialize
    @linkedlist = []
  end

  def append(value)

    @linkedlist.push(Node.new(value).node)
  end

  def prepend(value)
    @linkedlist = @linkedlist.insert(0,Node.new(value).node )
  end

  def self.size
    @size = @linkedlist.count
    @size
  end

  def head
    @head = nil
    if @linkedlist.size >= 1
      @head = @linkedlist[0]
    end
    @head
  end

  def tail
    @tail = nil
    if @linkedlist.size >= 1
      @tail = @linkedlist[-1]
    end
    @tail
  end

  def at(index)
    @value = nil
    if @linkedlist.count >= 1
      @value = @linkedlist[index]
    end
    @value
  end

  def pop
    @linkedlist.pop
  end

  def contains?(value)
    @condition = false
    @linkedlist.each { |ele|
    if ele ==("[ #{value} ]")
      @condition = true
    end}
    @condition
  end

  def find(value)
    @index = -1

    @linkedlist.each { |ele|
    @index += 1
     if ele == "[ #{value} ]"
      return @index
     end}
     
  end

  def to_s
    @stringlist = ""
    @linkedlist.each { |node| 
    unless node == @linkedlist.last
      @stringlist = @stringlist+ node.to_s + " -> " 
    else
       @stringlist = @stringlist+ node.to_s + " -> nil"
    end}
    @stringlist
  end
  
end

class Node
  attr_accessor :node, :value

  def initialize(value = nil)
    @value = value
    @node = "[ #{@value} ]"
    
  end

  def self.value
    @value = nil
    if self != nil
      @value = self.delete("[ ", " ]")
    end
    @value
  end
  

end

node1 = Node.new("more")
puts node1.node
nodelist = LinkedList.new
nodelist.append(242)
nodelist.append(324)
nodelist.append(345)
nodelist.append(6354)
nodelist.append(92934)
puts nodelist.to_s
puts nodelist.find(92934)
puts nodelist.to_s
