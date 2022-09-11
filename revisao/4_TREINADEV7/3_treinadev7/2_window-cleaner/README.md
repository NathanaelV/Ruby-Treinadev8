# Limpadora de janelas excêntrica

"Lavadora Dora" é uma profissional especializada na limpeza de janelas de
prédios comerciais. Dora foi contratada por uma empresa e recebeu instruções 
para limpar janelas específicas em determinadas coordenadas. Cada coordenada 
é formada por uma sequência de letras, por exemplo:

```
BTTTTTDD
```

A primeira parte da *string* representada por Bs e Ts indica o andar de uma
janela específica. A segunda parte, que é formada por Ds e Es, indica a coluna
em que a janela está.

Considerando um prédio de 64 andares (de 0 até 63), a primeira letra B indica
que a janela está na metade de baixo dos andares (de 0 até 31), eliminando as
demais. A letra seguinte, T, indica que a janela está entre as janelas do topo,
ou seja, entre 16 e 31. Isso deve ser repetido até encontrar o andar correto.
Considerando agora que esse prédio tem 4 janelas por andar, podemos
aplicar a mesma lógica utilizando as letras da segunda parte da *string* de
coordenadas. Neste exemplo, a primeira letra D indica que ficamos com a metade
da direita das janelas, de 2 a 3, e assim por diante. Ao final, a janela se
encontra no andar 31, na coluna 3.

Lavadora Dora é uma pessoa excêntrica e só limpa janelas em que a soma das
coordenadas resulta em valor par. Nesse caso, `31 + 3 = 34`, que é par, então a
janela foi lavada.

Os contratantes de Dora enviaram uma lista com todas as janelas que deveriam ser
limpas, uma coordenada por linha:

```
BTBTBTTTDDDE
TTBTBBBTEEEE
BTBTBTTBDDED
TTBBTBTTDDED
```

Neste desafio, você deve implementar o código que recebe uma *string* com uma
série de coordenadas e informações da quantidade de andares e número de janelas
por andar de um prédio. Ao final, esse código deve retornar a quantidade de
janelas que foram limpas por Lavadora Dora.

Dica: em *strings*, uma quebra de linha é indicada com '\n'.
