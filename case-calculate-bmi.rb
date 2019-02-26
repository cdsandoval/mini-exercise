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

case bmi
when 0..18.5
  puts "Underweight"
when 18.5..24.9
  puts "Healthy weight"
when 25..29.9
  puts "Overweight" 
when 30..39.9
  puts "Obesity"
else 
  puts "Morbid obesity"
end 
