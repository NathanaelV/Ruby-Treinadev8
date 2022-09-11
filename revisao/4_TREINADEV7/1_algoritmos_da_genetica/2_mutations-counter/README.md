# Contador de mutações

Sabemos que o DNA dos organismos pode sofrer alterações permanentes na sua sequência de
nucleotídeos, de forma que um gene pode ficar diferente da forma mais comumente
encontrada em outros organismos da mesma espécie.

Comparando duas fitas simples de DNA que codificam um mesmo gene e identificando as diferenças 
entre elas, podemos verificar quantas mutações ocorreram em uma determinada sequência.

Neste desafio, você deve implementar o código do método que compara duas fitas e
conta a quantidade de mutações na sequência. Note, no entanto, que o método pode
receber vários arrays com pares de fitas e deve ser retornado apenas o valor
que corresponde ao maior número de mutações. Por exemplo:

Valor de entrada:

```
[["ATTGCC", "ATTCCC"], ["TAGGGC", "TATCTC"]]
```

Ao comparar o primeiro par de strings, verificamos que elas apresentam diferença
em apenas um caractere. Já para o segundo par, existem três caracteres diferentes. Por
isso, o valor do retorno deve ser: `3`
