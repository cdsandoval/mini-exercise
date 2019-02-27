# https://www.khanacademy.org/computing/computer-science/algorithms/intro-to-algorithms/a/a-guessing-game

def guessnumber(num_machine)
  arr = [*1..16]
  steps = 0
  num_random = ""
  until num_machine == num_random do
    puts "Elige un numero"
    puts arr.join(" ")
    num_random = STDIN.gets.chomp.to_i
    unless arr.include? num_random
      puts "Numero no permitido"
      next
    end
    pos = arr.find_index(num_random)
    if arr.slice(0, pos).length != 0 and  arr.slice(0, pos).include?(num_machine) then
      arr = arr.slice(0, pos)
    else
      arr = arr.slice((pos + 1), arr.length)
    end
    steps = steps + 1 
  end
  puts "Numero de intentos #{steps}"
end

guessnumber(ARGV.first.to_i)
