#Start with doubly-linked list of 200 nodes with random values (1-100)
#Remove nodes as required so that no value is repeated
#Input: 8 <=> 4 <=> 2 <=> 4 <=> 9 <=> 4 <=> 8 <=> 8 <=> 0 <=> 3
#Output: 8 <=> 4 <=> 2 <=> 9 <=> 0 <=> 3

class Node 
  attr_accessor :value, :nexxt, :previous 

  def initialize(value, nexxt, previous)
    @value = value
    @nexxt = nexxt
    @previous = previous 
  end

end 

class List
  attr_reader :head 
  def initialize
    @last_node = nil
    @head = nil 
  end

  def add(value)
    new_node = Node.new(value, nil, @last_node)
    @head = new_node if head.nil?
    @last_node.nexxt = new_node unless @last_node.nil?
    @last_node = new_node
  end

  def delete(node)
    if node == @head
      @head = node.nexxt
    end 

    node.previous.nexxt = node.nexxt unless node.previous.nil?
    node.nexxt.previous = node.previous unless node.nexxt.nil?
  end  

  def print
    count = 0
    node = @head
    while !node.nil?
      puts node.value
      node = node.nexxt
      count += 1
    end
    puts "Count: #{count}"
  end

  def remove_dupes
    current_node = head
    duplicates = [] 
    while(!current_node.nil?) do 
      value = current_node.value
      next_node = current_node.nexxt

      if duplicates.include? value 
        delete(current_node)
        puts "found duplicate #{value}"
      else 
        duplicates << value 
        puts "adding #{value}"
      end 

      current_node = next_node

    end 
  end 

end

list = List.new 
200.times do |i|
  list.add(rand(100))
end 
list.print
list.remove_dupes
list.print


