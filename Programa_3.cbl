       IDENTIFICATION DIVISION.

       PROGRAM-ID. EX8.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 Mensagens.
           03 Mensagem-01 pic x(50) value "Cal. da area da circ.".
           03 Mensagem-02 pic x(50) value "Informe o raio da circ.".
           03 Mensagem-03 pic x(50) value "A circ. e' aproximadamente:".
           03 Mensagem-04 pic x(50) value "Pressione qualquer tecla".

       01 Circunferencia.
           03 raio-calculo pic s9(5)v99.
           03 resultado-calculo pic s9(5)v99.

       SCREEN SECTION.
       01 Tela-Inicial.
           03 line 05 column 20 pic x(50) using Mensagem-01.
           03 line 10 column 10 pic x(50) using Mensagem-02.
           03 line 15 column 10 pic x(50) using Mensagem-03.

       procedure division.

       01-Inicializacao.
           initialize raio-calculo.
           display Tela-Inicial.

       02-Entrada-Dados.
           accept raio-calculo at 1060.
           if raio-calculo < 0 then display "Valor invalido" at 2020
           perform 02-Entrada-Dados
           end-if.

       03-Calculo.
           compute resultado-calculo=3.14*(raio-calculo*raio-calculo).

       04-Resultado.
           display resultado-calculo at 1560.


       05-Fim.
           display Mensagem-04 at 2020.
           stop " ".
