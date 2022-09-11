# Troca de posição de elementos

Neste desafio, você deve implementar o código que recebe um *array* com vários elementos e uma sequência de instruções, depois executa a troca da posição dos elementos conforme indicado nessas instruções. Veja o seguinte exemplo:

```ruby
['A', 'B', 'C'] # array recebido

1<>2 # instruções
```

Aplicando a instrução `1<>2`, espera-se que os elementos nas posições de índices `1` e `2` do *array* sejam trocados um pelo outro, ou seja, no exemplo acima o *array* resultante seria:

```ruby
['A', 'C', 'B'] # resultado
```

Lembrando que pode ser passada uma sequência de instruções. Neste caso deve ser feita a troca das posições na ordem definida. Por exemplo:

```ruby
['A', 'B', 'C', 'D', 'E'] # array recebido

# sequência de instruções
0<>2
1<>4
```

Deve-se trocar primeiro o elemento na posição de índice `0` pela posição `2` e depois o elemento da posição `1` pelo da posição `4`, resultando em:

```ruby
['C', 'E', 'A', 'D', 'B']  # resultado
```
