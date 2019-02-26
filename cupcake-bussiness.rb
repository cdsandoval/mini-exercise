puts """
----------------------------------------------------------------------------
Bread                   Frosting                    Filling
----------------------------------------------------------------------------
(1) Vanilla $0.50       (4) Vanilla $0.60           (7) Nutella $1.00
(2) Chocolate $0.75     (5) Oreo $1.10              (8) Strawberry $0.55
(3) Red Velvet $0.85    (6) Mint chocolate $1.45    (9) Peanut butter $0.45
"""

prices = [0.5, 0.75, 0.85, 0.6, 1.1, 1.45, 1, 0.55, 0.45]
input = 1
ops = []
total = 0
num_cupcakes = 0
flag = false
until input.to_i == 0  do
    puts "Elige tus donas favoritas(tipo_de_dona cantidad_de_donas) [0 para salir]"
    input = STDIN.gets.chomp
    ops.push(input) unless input.to_i == 0
    if (input.to_i == 0)
        ops.each do |op|
            type = op.split(" ")[0].to_i
            if type.between?(1,6)
                flag = true
            end
        end
        if !flag
            puts "Elige un Bread or Frosting"
            input = 1
        end
    end
    
end

ops.each do |op|
    type, quantity = op.split(" ").map(&:to_i)
    total += prices[type.to_i - 1] * quantity
    num_cupcakes += quantity
end

total = (total * 0.96).round(2) if (num_cupcakes >= 6)
total = (total * 0.88).round(2) if (num_cupcakes >= 12)

puts "El total es #{total}"