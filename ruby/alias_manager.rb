name = "Felicia Torres"

def name_reverse(name)
	name = name.split(' ').reverse!.join(" ")
	puts name
end 

name_reverse(name)