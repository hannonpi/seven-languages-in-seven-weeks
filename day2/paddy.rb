# -*- coding: utf-8 -*-
a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
min = 0
max = a.length/4 - 1
if a.length % 4 != 0
  max = max + 1
end
(min..max).each do |i|
  b = Array.[]
  ((i*4)...((i*4)+4)).each do |j|
    b.push(a[j])
  end
  puts "group " + i.to_s
  p b
end

a.each_slice(4) { |b| p b }


class Tree
  attr_accessor :children, :node_name
  # input is a hash {foo => {bar => {child1 => {}, child2 => {}}. 'bar2' => {}}}  
  def initialize(in_hash)
    in_hash.each do
      |key,value|
      @node_name = key
      @children = _do_build(value)
    end
  end

  def _do_build(children={})
    child_nodes = Array.new()
    children.each do
      |key,value|
      child_hash =  children.select {|k,v| k == key}
      child_nodes.push(Tree.new(child_hash))
    end
    child_nodes
  end

  def visit_all(&block)
    visit &block 
    children.each {|c| c.visit_all &block}
  end

  def visit(&block) 
    block.call 
    self
  end 

end

foo = {"grandpa" => { "dad" => {"child 1" => {}, "child 2" => {} }, "uncle" => {"child 3" => {}, "child 4" => {} } } }
bar = Tree.new(foo)
p bar