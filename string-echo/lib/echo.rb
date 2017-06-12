class Echo
	def message(pergunta)
	pergunta = gets.strip

		#Defini respostas as perguntas
		if  pergunta.strip.empty?
			return "Nada?"

		elsif pergunta.last == "?"
			return "Só faço echo, não respondo perguntas."

		elsif pergunta == "1, 2, 3..."
			return pergunta

		elsif pergunta == pergunta.upcase
			return"Não faço echo de gritos."

		elsif pergunta.downcase == pergunta && pergunta.match("!/?") == nil
 			return "uma frase simples"
		else
			return "E ai?? Nada!"
		
		end
	end
end
