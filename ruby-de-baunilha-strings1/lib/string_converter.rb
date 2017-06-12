#Incompleto, falta melhorar o desempenho do codigo
class StringConverter
  def self.convert_to_iso8859_1(phrase)
  	#Se haver possibilidade de conversao
  	#if phrase.index("&") != nil
  		phrase.gsub!("&","&amp;")

  		#A
  		phrase.gsub!("á","&aacute;")
  		phrase.gsub!("Á","&Aacute;")
  		phrase.gsub!("ã","&atilde;")
  		phrase.gsub!("Ã","&Atilde;")
  		phrase.gsub!("â","&acirc;")
  		phrase.gsub!("Â","&Acirc;")
  		phrase.gsub!("à","&agrave;")
  		phrase.gsub!("À","&Aagrave;")
  		#E
  		phrase.gsub!("é","&eacute;")
  		phrase.gsub!("É","&Eacute;")
  		phrase.gsub!("ê","&ecirc;")
  		phrase.gsub!("Ê","&Ecirc;")
  		#I
  		phrase.gsub!("í","&iacute;")
  		phrase.gsub!("Í","&Iacute;")
  		#O
  		phrase.gsub!("ó","&oacute;")
  		phrase.gsub!("Ó","&Oacute;")
  		phrase.gsub!("õ","&otilde;")
  		phrase.gsub!("Õ","&Otilde;")
  		phrase.gsub!("ô","&ocirc;")
  		phrase.gsub!("Ô","&Ocirc;")
  		#U
  		phrase.gsub!("ú","&uacute;")
  		phrase.gsub!("Ú","&Uacute;")
  		#Ç
  		phrase.gsub!("ç","&ccedil;")
  		phrase.gsub!("Ç","&Ccedil;")
  	#end
  	return phrase

  end

  def self.convert_to_human(phrase)
  	#Se haver possibilidade de conversao
  	if phrase.index("&") != nil
  		#A
  		phrase.gsub!("&aacute;","á")
  		phrase.gsub!("&Aacute;","Á")
  		phrase.gsub!("&atilde;","ã")
  		phrase.gsub!("&Atilde;","Ã")
  		phrase.gsub!("&acirc;","â")
  		phrase.gsub!("&Acirc;","Â")
  		phrase.gsub!("&agrave;","à")
  		phrase.gsub!("&Aagrave;","À")
  		#E
  		phrase.gsub!("&eacute;","é")
  		phrase.gsub!("&Eacute;","É")
  		phrase.gsub!("&ecirc;","ê")
  		phrase.gsub!("&Ecirc;","Ê")
  		#I
  		phrase.gsub!("&iacute;","í")
  		phrase.gsub!("&Iacute;","Í")
  		#O
  		phrase.gsub!("&oacute;","ó")
  		phrase.gsub!("&Oacute;","Ó")
  		phrase.gsub!("&otilde;","õ")
  		phrase.gsub!("&Otilde;","Õ")
  		phrase.gsub!("&ocirc;","ô")
  		phrase.gsub!("&Ocirc;","Ô")
  		
  		if phrase.index('u')
  		#U
  			phrase.gsub!("&uacute;","ú")
  		end
  		phrase.gsub!("&Uacute;","Ú")
  		#Ç
  		phrase.gsub!("&ccedil;","ç")
  		phrase.gsub!("&Ccedil;","Ç")

  		phrase.gsub!("&amp;","&")
  	end
  	
  	return phrase
  end
end
