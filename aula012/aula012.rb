# gets, \n, chomp

puts "Olá! Digite seu nome..."
nome = gets.chomp
puts nome.inspect
puts "Digite a idade"
idade = gets.to_i
puts idade + 3