=begin
def method_with_block(param_a,param_b)
  yield param_a , param_b
end
method_with_block(1,2) {|x,y|
puts "this is #{x} and #{y}"  }
=end

an_array = Array.new
a_hash = Hash.new

an_array= ["a","b","c","d"]
a_hash[:harrison_ford]= "Star Wars"
a_hash[:tom_hanks] = "Forrest Gump"
a_hash[:samuel_l_jackson] = "Pulp Fiction"

=begin
an_array.each do |letter|
  puts letter.next
end
an_array.map! do |letter|
  letter.next
end
puts an_array
a_hash.each do |actor,film|
  puts "The actor #{actor.to_s}'s best film is #{film}"
end
puts an_array.delete_if{|x| x == "b"}
puts a_hash.delete_if{|actor, film| film == "Star Wars"}
puts an_array.keep_if{|x| x =="b"}
puts a_hash.keep_if{|actor, film| film == "Star Wars"}
puts an_array.drop_while{|x| x == "a"}
puts a_hash.drop_while{|actor, film| film == "Star Wars"}
=end

puts an_array.reject{|x| x == "b"}

puts a_hash.reject{|actor, film| film == "Star Wars"}
