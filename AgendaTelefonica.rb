def formata(texto)
	texto.strip
end

def desc_tel(tipo_telefone)
# => Metodo usando if elsif

#	if tipo_telefone == 'C'
#		"Comercial"
#	elsif tipo_telefone == 'R'
#		"Residencial"
#	elsif tipo_telefone == 'M'
#		"Celular"
#	else
#		"Nao identificado"
#	end	

# => Metodo usando case
	case tipo_telefone
	when 'C'
		"Comercial"
	when 'R'
		"Residencial"
	when 'M'
		"Celular"
	else
		"Nao identificado"
	end				
end

def cadastra_registro(registros)

	puts "Entre com os nomes :"
	registros << formata(gets)
	puts "Seu nome e: #{registros[registros.size-1]}"

	puts "Digite seu numero de telefone:"
	registros << formata(gets)

	puts "Tipo do telefone;"
	puts "Comercial[C],Residencial[R] ou Celular[M]"
	registros << formata(gets)

	puts "#{formata(registros[registros.size-3])} - 
		  #{formata(registros[registros.size-2])} - 
		  #{desc_tel(formata(registros[registros.size-1]))}"
		  "************************************************"

	puts "Obrigado, seus dados estao na agenda"

	puts "Quer ver todos os registros?"
	puts "[1] Sim"
	puts "[2] Nao"
	if formata(gets) == '1'		
		le_registro(registros)
	end
end

def le_registro(registros)
	i=0
	while i<registros.size
		puts "#{formata(registros[i])} - #{formata(registros[i+1])} - #{desc_tel(formata(registros[i+2]))}"
		i=i+3
	end
	puts "*****************************************************************"
end

registros = Array.new
registros << "Nome"
registros << "Telefone"
registros << "Tipo"

bool = '1';
while bool == '1'
	cadastra_registro(registros)
	puts "Quer fazer outro registro?"
	puts "[1] Sim"
	puts "[2] Nao"

	bool = formata(gets)	
end
