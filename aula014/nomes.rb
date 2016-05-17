nomes = %w(Jackson José Maria)

nomes.each do |nome|
  puts "Olá, #{nome}"
end

puts "Ruby " + "on " + "Rails " + nomes[0]
texto = "Ruby " << "on " << "Rails " << nomes[0]

puts texto.gsub("Jackson", "O melhor curso!")
puts texto

puts texto.gsub!("Jackson", "O melhor curso!")
puts texto

txt = "Jackson Pires"
puts txt.object_id
txt = txt + " Jr"
puts txt.object_id
txt = txt << " Rails"
puts txt.object_id

h = { :a => 123, :b => "Jackson"}
puts h

h1 = { a: 123, b: "Jackson"}
puts h1