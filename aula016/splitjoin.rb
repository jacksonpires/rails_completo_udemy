str = "Pão,Leite,Café,Bolacha,Rosquinha"
x = str.split(",")
puts str
puts x.inspect

str1 = "Jackson Pires de Oliveira"
x1 = str1.split
puts str1
puts x1.inspect

str2 = %w(Jackson Pires de Oliveira)
puts str2.inspect

puts "Isso é um join! #{ str2.join(" ") }"
