class Conta

	attr_accessor :numero,:titular,:saldo,:limite

	def initialize(dados)
		@numero = dados[:numero]
		@titular = Cliente.new(dados[:titular])
		@saldo = dados[:saldo]
		@limite = dados[:limite]
	end

	def depositar(deposito)
		self.saldo = self.saldo + deposito
	end
	
	def sacar(saque)
		if(self.limite + self.saldo >= saque)
			self.saldo = self.saldo - saque		
		else
			return false
		end
	end

	def no_limite?
		if saldo < 0
			return true
		else
			return false		
		end
	end

	def transfere(destino,valor)
		if(self.limite + self.saldo >= valor)
			self.saldo = self.saldo - valor
			destino.saldo = destino.saldo + valor
		else
			return false
		end
	end

	def==(conta_atual)
		self.numero = conta_atual.numero
		self.titular = conta_atual.titular
		self.saldo = conta_atual.saldo
		self.limite = conta_atual.limite
	end
end

