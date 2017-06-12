require 'spec_helper'

describe StringConverter do
  it 'converte frase para html iso 8859-1' do
    frase = "O João e o pé de feijão"
    frase_convertida = "O Jo&atilde;o e o p&eacute; de feij&atilde;o"
    expect(StringConverter.convert_to_iso8859_1(frase)).to eq frase_convertida
  end

  it 'converte iso 8859-1 para legível' do
    frase_convertida = "O João e o pé de feijão"
    frase = "O Jo&atilde;o e o p&eacute; de feij&atilde;o"
    expect(StringConverter.convert_to_human(frase)).to eq frase_convertida
  end

  it 'converte frase para html iso 8859-1' do
    frase = "O João e o pé de feijão
Essa é uma estória que fez parte da infância das crianças nascidas nos anos 70 e
80."
    frase_convertida = "O Jo&atilde;o e o p&eacute; de feij&atilde;o
Essa &eacute; uma est&oacute;ria que fez parte da inf&acirc;ncia das crian&ccedil;as nascidas nos anos 70 e
80."
    expect(StringConverter.convert_to_iso8859_1(frase)).to eq frase_convertida
  end

  it 'converte iso 8859-1 para legível' do
    frase_convertida = "No nosso processo, unimos tudo que a gente vê __valor__ e que de fato permita que
    um _Dev_ mostre __todo seu potencial__. Estamos sempre testando novidades e
    explorando algo novo. Conheça as __5 etapas__ que vamos fazer juntos para te
    colocar numa dessas empresas:

    - Quem é você?
    - Troca de idéias
    - Quem sabe faz!
    - Pair Programming Q & A
    - Parabéns

    Mostrar aptidão, paixão por programar, etc."

    frase = "No nosso processo, unimos tudo que a gente v&ecirc; __valor__ e que de fato permita que
    um _Dev_ mostre __todo seu potencial__. Estamos sempre testando novidades e
    explorando algo novo. Conhe&ccedil;a as __5 etapas__ que vamos fazer juntos para te
    colocar numa dessas empresas:

    - Quem &eacute; voc&ecirc;?
    - Troca de id&eacute;ias
    - Quem sabe faz!
    - Pair Programming Q &amp; A
    - Parab&eacute;ns

    Mostrar aptid&atilde;o, paix&atilde;o por programar, etc."

    expect(StringConverter.convert_to_human(frase)).to eq frase_convertida
  end
end
