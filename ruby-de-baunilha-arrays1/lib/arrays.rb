class Arrays
  def self.converte_impares_por(lista, numero)

  	lista.delete_if{|i| i%2==0} 
  	multiplicado = []
  	
  	i=0
  	for i in i..lista.length-1
  		multiplicado << lista[i]*numero
  	end

  	return [lista,multiplicado]
 
  end

  def self.converte_pares_por(lista, numero)

  	lista.delete_if{|i| i%2!=0} 
  	multiplicado = []
  	
  	i=0
  	for i in i..lista.length-1
  		multiplicado << lista[i]*numero
  	end

  	return [lista,multiplicado]
 
  end
end
