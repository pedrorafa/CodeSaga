class ArrayUtils
  
  def self.compara(lista1, lista2) #compara dois arrays

  	#Testa o tamanho dos arrays && se tem os mesmo elementos
  	if lista1.length == lista2.length && lista1.sort.uniq == lista2.sort.uniq
  		return true
  	else
  		return false
  	end		
  end

  #Testa divisiveis
  def self.divisiveis(n1,n2)
  	i=1
  	retorno = []
  	div = []#Armazena divisiveis de ambos
  	div1 = []#Armazena divisiveis do primeiro
  	div2 = []#Armazena divisiveis di segundo

  	#Testa divisao de 1 ate 50
  	for i in i..50
  		if i%n1 == 0 && i%n2 == 0
  			div << i
  		elsif i%n1 == 0
  			div1 << i
  		elsif i%n2 == 0
  			div2 << i  			
  		end
  	end 
  	#Add dados ao retorno
  	retorno << div
  	retorno << div1
  	retorno << div2
  	return retorno
  end

  #Soma array
  def self.soma(lista)
  	i = 0
  	soma = 0
  	for i in i..(lista.length-1)
  		soma += lista[i]
  	end
  	return soma
  end

  #Combina valores de dois arrays
  def self.combinar(array1,array2)
  	return array1.product(array2)
  end
end
