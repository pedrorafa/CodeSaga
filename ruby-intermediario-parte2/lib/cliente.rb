class Cliente
  attr_reader :nome, :sobrenome, :cpf
  attr_accessor :tratamento

  def initialize(nome:,sobrenome:,cpf:)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
    @tratamento
  end

  def nome_completo
  	return "#{tratamento} #{nome} #{sobrenome}".strip
  end
end
