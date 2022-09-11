# Maior inteiro

Neste desafio você deve implementar o código que, dada uma lista de números,
encontra o maior inteiro que pode ser composto pelos números dessa lista. Por
exemplo, dada a lista `[15, 22, 6]`, é possível compor os seguintes números:

```
15226
15622
22156
22615
61522
62215
```

Dessa lista, o número `62215` é o maior deles.

O método receberá um conjunto de arrays com diversos números e deve retornar
cada um dos maiores inteiros encontrados para cada lista. Por exemplo:


```
Lista de inteiros:  [[12, 23, 55], [12, 22], [9, 97, 7]]

Retorno: [552312, 2212, 9977]
```

**Atenção**: este desafio pode ser resolvido com um código que lista todas as
combinações possíveis com todos os números dados no *array* e, em seguida, encontra
o maior entre eles. Apesar de funcionar, essa abordagem demora muito para chegar na resposta,
já que é necessário gerar todas as combinações possíveis. Por isso, dessa vez
esperamos que você implemente um código que encontre esse valor da forma
mais rápida que conseguir. ;)
