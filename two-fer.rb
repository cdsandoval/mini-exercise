puts "Ingresa tu nombre"
name = gets.chomp.capitalize
name = name != ""  ? name : "you" 
puts "One for #{name}, one for me."