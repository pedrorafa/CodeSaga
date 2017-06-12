require 'spec_helper'

describe ContaCorrente do
  it "deveria cobrar taxa de R$0,10 no deposito" do
    conta = conta_corrente
    saldo_anterior = conta.saldo
    valor_deposito = 200
    taxa = 0.10
    conta.depositar(valor_deposito,taxa)
    expect(conta.saldo).to eq(saldo_anterior + valor_deposito - taxa)
  end

  it "deveria não gerar juros quando atualizada" do
    conta = conta_corrente
    saldo_anterior = conta.saldo
    conta.atualizar
    expect(conta.saldo).to eq(saldo_anterior)
  end

  def conta_corrente
    ContaCorrente.new(numero: 1234, titular: Cliente.new(nome: "Jose da Silva"), saldo: 1000, limite: 500)
  end
end
