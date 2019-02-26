# Ingresar numeros
puts "Ingrese número 1:"
num1 = gets.chomp.to_i

puts "Ingrese número 2:"
num2 = gets.chomp.to_i

puts "Elige una operación:"
puts "+  -  * /"
op = gets.chomp 

case op 
when "+"
  result = num1 + num2
when "-"
    result = num1 - num2
when "*"
    result = num1 * num2
when "/"
    result = num2 != 0 ? num1 / num2 : 0
else
  "Error: operación invalida (#{op})"
end 

puts "Resultado => #{result}"