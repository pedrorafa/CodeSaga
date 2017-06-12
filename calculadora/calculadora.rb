class Calculadora

  def formata(x)
  	x.strip
  end

  puts "Entre com o primeiro valor: "
  n1 = formata(gets)

  puts "Entre com o operador:"
  op = formata(gets)

  puts "Entre com o segundo valor:"
  n2 = formata(gets)

  Calcular(n1,op,n2)

  def Calcular(n1,op,n2)	
  	case op
  	when :+
  		soma(n1,n2)
  	when :-
  		subtracao(n1,n2)
  	when :*
  		multiplicacao(n1,n2)
  	when :/
  		divisao(n1,n2)
  	else  	
  		puts "operador invalido!"
  	end
  end
  def soma(n1, n2)
	n1 + n2
  end

  def subtracao(n1,n2)
  	n1-n2  	
  end
  def multiplicacao
  	n1*n2
  end
  def divisao
  	n1/n2  	
  end
end
