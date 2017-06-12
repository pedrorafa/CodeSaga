class ArrayUtils
  #Metodo para os multiplos
  def self.multiplos(qtd, multiplo)
  	array = [multiplo]
  	i = 2
  	while i<=qtd do
  		array << i*multiplo 
  		i += 1 		
  	end
  	return array
  end

  #Metodo para a tabuada
  def self.tabuada(qte)
	array = []#Array de retorno

  	for qte in 1..qte
  		aux = []#Array temporario
  		i=1
  		for i in i..10 #Loop para calculo
  			aux << i *qte
  		end
  		array << aux #Add primeiro calculo ao retorno
  	end

  	return array
  end


  def self.ultimo(lista)
  	return lista[lista.length - 1]
  end
end
