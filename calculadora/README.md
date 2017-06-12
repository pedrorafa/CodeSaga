Instruções
==========

Primeira coisa a fazer é executar:

    $ ruby calculadora_test.rb

Isso deve exibir a seguinte mensagem:

\# Running:

FSSSS

Finished in 0.002110s, 2369.6682 runs/s, 473.9336 assertions/s.

  1) Failure:\
  CalculadoraTest#test_soma [calculadora_test.rb:8]:\
  Expected: 30\
    Actual: nil

    5 runs, 1 assertions, 1 failures, 0 errors, 4 skips

Se mostrar isso você está no caminho certo! Abra o arquivo calculadora.rb e se
possível o calculadora_test.rb também.

Implemente o método soma e execute o teste novamente, se tudo estiver correto,
você verá um mensagem como essa:

\# Running:

FSSSS

Finished in 0.002110s, 2369.6682 runs/s, 473.9336 assertions/s.

    5 runs, 5 assertions, 0 failures, 0 errors, 4 skips

0 falhas e 0 erros, estando assim, hora de remover um skip do teste, remova a
linha que contém skip do test_subtracao e rode o teste, veja o erro e implemente
o novo método, continue até ter 0 skips, failures e errors.

Divirta-se!
