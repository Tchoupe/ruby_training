class User
	attr_accessor :name, :surname, :language, :pays, :friend

	def complete_name
		name + " " + surname
	end

	def nombre_amis
		name + " a #{friend.size}" + " amis."
	end

	def friend_with(var)
		if friend.include? var
			name + " est ami avec " + var + "."
		else
			name + "n'est pas ami avec " + var + "."
		end
	end

	def habite_en(valeur)
		valeur == pays
	end
end

bob = User.new
bob.name = "Bob"
bob.surname = "Lenon"
bob.language = "Ruby"
bob.pays = "Belgique"
bob.friend = ["Paul", "Jacques"]

#puts bob.complete_name
#puts bob.language

#puts "Bob, belgique?"
#puts bob.habite_en("Belgique")

tab = Array.new
yn = String

while yn != "no"
	puts("yn? ")
	tab << gets.chomp
	yn = tab.last
end

if ARGV.size != 1
	puts "Mauvais nombre d'arguments."
else
	puts bob.nombre_amis
	puts bob.friend_with(ARGV[0])
end
