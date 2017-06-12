
class Quadrados
	
	def initialize(n1)
		require 'prime'
		$array = 0
		$array = Prime.take(n1)
	end
	
	def quadrado_da_soma()
		soma = 0
		$array.each{|num| soma += num}

		return soma**2
	end

	def soma_dos_quadrados()
		soma = 0
		$array.each{|num| soma += num**2}

		return soma
	end

	def diferenca()
		soma = 0
		$array.each{|num| soma += num}
		soma = soma**2
		$array.each{|num| soma -= num**2}
		
		return soma
	end
end
