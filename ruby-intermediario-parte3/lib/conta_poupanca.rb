class ContaCorrente
  attr_accessor :titular, :limite, :saldo, :numero

  def initialize(numero:, nome:, saldo:)
    @numero = numero
    @titular = cria_cliente(nome)
    @saldo = saldo
  end

  def cria_cliente(nome)
    sobrenome = nome[nome.index(' ')+1,nome.length - nome.index(' ')]
    nome = nome[0,nome.index(' ')]
    cpf = "111.111.111-01"

    Cliente.new(nome: nome,sobrenome: sobrenome,cpf: cpf)
  end

  def atulizar
    @saldo *=  1.005    
  end

  def sacar(valor)
    return false if valor > (@saldo + @limite)
    @saldo -= valor
  end

  def depositar(valor)
    @saldo += valor
  end

  def no_limite?
    @saldo < 0
  end

  def ==(other)
    other.titular.nome == titular.nome &&
      other.limite == limite &&
      other.saldo == saldo &&
      other.numero == numero
  end

  def transfere(conta_destino, valor_transferencia)
    conta_destino.saldo += valor_transferencia
    sacar(valor_transferencia)
  end
end
