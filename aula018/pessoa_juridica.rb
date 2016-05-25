require_relative "pessoa.rb"

class PessoaJuridica < Pessoa
  attr_accessor :cnpj
  attr_accessor :nome_fantasia
end