# Leitor de sequência

Em matemática existe uma sequência de inteiros que seria algo assim:

```
1, 11, 21, 1211, 111221, 312211, 131122211... e assim por diante
```

Essa progressão se forma como se os números fossem lidos em voz alta. Por
exemplo, na sequência `112`, o  número `1` aparece duas vezes (dois `1`) e
o número `2` aparece uma vez (um `2`), assim poderia ser lido: `2112`.

A sequência é gerada iterativamente, usando o valor gerado como base para 
criar o próximo número.

Neste desafio voe vai implementar o método que recebe um valor base e um 
número multimplicador e aplica a lóica da sequência tanas vezes quanto 
indicado pelo multiplicador. Por exemplo:

```
sequência base inicial: 11223
multiplicador: 2

Aplicando o algoritmo:

11223
212213
12112221113

Retorno: 1211221113
```


Resolvendo:

Entradas: Uma sequência de números e um multiplicador

Lógica:

  - Ler em voz alta o número de entrada e devolver um novo número como se fosse
  lido em voz alta
  - Repetir N vezes este processo, sempre utilizando o último valor como entrada, 
  até que N seja igual ao multiplicador


Saída: 
  - A saída é a última versão do número


Algoritmo => passo a passo => receita de bolo 


sequencia_numeros = "11223"
multipliador = 2


*contagem* = 0
*posicao_atual* = 0

multiplicador.vezes faca

  para cada *numero* em *sequencia_numeros*
    # numero = 1 // priro número 
    se numero == proximo_numero // = sequenca_numeros[posicao_atual + 1]
      continua_contando
    fim

    se numero != proximo_numero
      para de contar
      processa o numero atual
      contagem = 1
    fim 
    
    posicao_atual += 1

  fim

  sequencia_numeros = resposta_final

fim

devolver resposta_final
