require './lib/node.rb'
require './lib/linked_list.rb'

class BeatBox
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end
    
  def append(new_values)
    temporary_array = new_values.split
    temporary_array.each do |value|
      list.append(value)
    end
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end