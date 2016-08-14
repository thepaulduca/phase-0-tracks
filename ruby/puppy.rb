class Puppy
end

Puppy.methods

fido = Puppy.new
duchess = Puppy.new
spot = Puppy.new

puts spot.class
puts duchess == fido
puts fido.instance_of?(Array)
puts fido.instance_of?(Puppy)

