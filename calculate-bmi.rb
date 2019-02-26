puts "Ingrese el peso de la persona"
weight = gets.chomp.to_f

puts "Ingrese la altura de la persona"
height = gets.chomp.to_f

if weight == 0 or height == 0
  puts "Invalid input"
  return ""
end

bmi = weight / (height ** 2).to_f 

puts "Your bmi is #{bmi.round(1)}"  

if (bmi < 18.5)	
  puts "Underweight"
elsif bmi.between?(18.5, 24.9)
  puts "Healthy weight"
elsif bmi.between?(25, 29.9)
  puts "Overweight"
elsif bmi.between?(30, 39.9)
  puts "Obesity"
else 
  puts "Morbid obesity"
end 
