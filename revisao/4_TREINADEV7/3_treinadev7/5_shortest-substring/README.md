# Menor substring

Elrond Nusk e Taliah Ripley terão um bebê e estão escolhendo o nome de sua
prole. Como é tradição na família, os nomes são escolhidos usando um sistema
peculiar. Dada uma longa *string* de letras, Elrond e Taliah escolhem algumas
letras alvo e obtêm a menor substring que contenha todas essas letras. Essa
substring é considerada como possível nome para o bebê.

Por exemplo, dada a *string*:

```ruby
'gehaonuz'
```

e as letras alvo `'auo'`, a menor substring que contém essas letras é:

```ruby
'aonu'
```

Pois essa é a menor sequência da *string* inicial que contém todas as letras alvo.
Note que a ordem das letras alvo não importa.

Neste desafio, você deve implementar o código que recebe uma *string* com um 
conjunto de letras alvo e retorna a menor substring que contenha as
letras alvo, ou seja, o possível nome para o bebê de Elrond e Taliah.

Considere que as *strings* originais sempre vão conter todas as letras alvo pelo
menos uma vez.

