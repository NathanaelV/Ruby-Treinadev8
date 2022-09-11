# Splicing do RNA

Antes que uma fita de RNA recém-produzida esteja pronta para ser traduzida em
proteínas, é necessário que ela passe pelo processo de *Splicing*. Nele,
são identificados os seguimentos do RNA que codificam genes (*exons*) e são
removidos os trechos que não codificam (*íntrons*). Ao final, a fita de RNA
pronta para tradução conta somente com os *exons* e a chamamos de RNA mensageiro (RNAm).

Neste desafio, você vai implementar o código do método que recebe uma *string*
que representa RNA recém produzido e um *array* de *strings* que representam os
*íntrons* e, ao final, retorna a *string* de RNA mensageiro, somente composta por *exons*.

```
RNA recém produzido:

GCAUCGAUCGACGGGUGCGAUGCGAGCAUCGAUGCUAGCGUAGCAUCGAUGCGAUCUAGCUGUC
      ^              ^                  ^             ^
           intron                            intron

RNA resultante do splicing:

GCAUCGCGAGCAUCGAUGCUAGCGCUAGCUGUC
```

