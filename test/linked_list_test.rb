require "test_helper"
require "linked_list"

describe "linked_list" do
  describe "#add" do
    it 'adds nodes to the end of the list' do
      list = List.new
      list.add(2)
      list.add(4)
      
      list.head.value.must_equal 2
      list.head.nexxt.value.must_equal 4
    end
  end

  describe "remove_dupes" do
    it "removes duplicates" do
      list = List.new
      list.add(3)
      list.add(4)
      list.add(3)
      list.add(5)
      list.add(4)

      list.remove_dupes

      # 345
      node = list.head
      node.value.must_equal 3
      node.nexxt.value.must_equal 4
      node.nexxt.nexxt.value.must_equal 5
    end
  end 
end 