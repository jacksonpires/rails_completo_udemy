h = { "a" => 123, "b" => 899 }
puts h.class
puts h.inspect
puts h
puts h["a"]
puts h["b"]
h.merge!({ "jackson" => "pires"})
puts h