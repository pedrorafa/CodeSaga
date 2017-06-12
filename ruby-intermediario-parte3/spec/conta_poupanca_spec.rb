require 'spec_helper'

describe ContaPoupanca do
  it "deveria não cobrar taxa no deposito" do
    conta = conta_poupanca
    saldo_anterior = conta.saldo
    valor_deposito = 200
    conta.depositar(valor_deposito)
    expect(conta.saldo).to eq(saldo_anterior + valor_deposito)
  end

  it "deveria adicionar juros quando atualizada" do
    conta = conta_poupanca
    saldo_anterior = conta.saldo
    juros = 0.005
    conta.atualizar(juros)
    expect(conta.saldo).to eq(saldo_anterior * (1 + juros))
  end

  def conta_poupanca
    ContaPoupanca.new(numero: "5354-4500", titular: Cliente.new("Jose da Silva"), saldo: 1000.10)
  end
end
