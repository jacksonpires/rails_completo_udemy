a = 123
puts a.class

def mostrar(a)
  if a.instance_of?(String)
    puts a
  end
  
  if a.instance_of?(Array)
    a.each do |i|
      puts ">>> #{i}"
    end
  end
end


mostrar("Jackson")
mostrar([1,4,5,6])

