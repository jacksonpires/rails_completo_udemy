require_relative "pessoa.rb"

class PessoaFisica < Pessoa
  attr_accessor :cpf
  attr_accessor :data_nascimento
end