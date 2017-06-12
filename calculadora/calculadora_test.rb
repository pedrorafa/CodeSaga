require 'minitest/autorun'
require_relative 'calculadora'

class CalculadoraTest < MiniTest::Test
  def test_soma
    calc = Calculadora.new

    assert_equal 30, calc.soma(30, 0)
    assert_equal 39, calc.soma(30, 9)
    assert_equal 42, calc.soma(30, 12)
    assert_equal 34, calc.soma(30, 4)
    assert_equal 0,  calc.soma(30, -30)
  end

  def test_subtracao
    calc = Calculadora.new

    assert_equal 30, calc.subtracao(30, 0)
    assert_equal 20, calc.subtracao(30, 10)
    assert_equal 40, calc.subtracao(30, -10)
  end

  def test_multiplicacao
    calc = Calculadora.new

    assert_equal 30, calc.multiplicacao(30, 1)
    assert_equal 45, calc.multiplicacao(15, 3)
    assert_equal 20, calc.multiplicacao(0.2, 100)
  end

  def test_divisao
    calc = Calculadora.new

    assert_equal 30, calc.divisao(60, 2)
    assert_equal 1, calc.divisao(3, 2)
    assert_equal 1.5, calc.divisao(3.0, 2)
    assert_equal 0, calc.divisao(1, 0)
  end

  def test_calcular
    calc = Calculadora.new

    assert_equal 30, calc.calcular(60, 2, :/)
    assert_equal 30, calc.calcular(15, 2, :*)
    assert_equal 30, calc.calcular(32, 2, :-)
    assert_equal 30, calc.calcular(28, 2, :+)
  end
end
