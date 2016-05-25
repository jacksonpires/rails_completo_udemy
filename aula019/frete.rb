module Frete
	TABELA_FRETE = {"BA" => 1.95, "SP" => 3.87, "PE" => 2.56}

	def imprimir_tabela_frete
    puts "--- Tabela de Frete --"

		TABELA_FRETE.each do |k,v|
			puts "#{k} - #{v}"
		end

	  puts "----------------------"
	end

	def calcular_valor_final(valor_produto, uf) 
		valor_produto * TABELA_FRETE[uf]
  end
end
