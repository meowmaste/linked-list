load "linked_list.rb"

list = List.new 
200.times do |i|
  list.add(rand(100))
end 
list.print
list.remove_dupes
list.print