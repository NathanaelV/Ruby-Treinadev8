# Junta 4

Duas crianças queriam se entreter e foram procurar um jogo para aprenderem. 
Encontraram um jogo popular em que dois participantes se alternam em turnos, colocando
peças num tabuleiro vertical de 8 por 8 casas. O primeiro jogador a conseguir
juntar 4 de suas peças em linha na horizontal ou na vertical, vence. É importante
notar que nesse jogo, sempre que uma peça é colocada no tabuleiro, ela
cai até última casa disponível. Ou seja, se for a primeira peça na coluna, ela
vai estar na linha mais abaixo. Se for a segunda peça nessa coluna, ela ficará
na linha acima da primeira peça.

<img src="https://campuscode-site.s3.sa-east-1.amazonaws.com/codesaga/Lig4_800pxh.png", width=400, height=auto />

Como não tinham o tabuleiro, as crianças resolveram escrever num papel
cada movimento feito pelos jogares em sequência, indicando a coluna em que cada
peça é colocada. Mas as crianças não se preocuparam em saber quem venceu,
nem em qual rodada. Exemplo:

```
X->5
O->4
X->1
O->1
X->5
O->2
```

No exemplo acima, a pessoa com as peças X começou jogando na coluna 5, em
seguida seu oponente colocou sua peça na coluna 4 e assim por diante.


Neste desafio, você deve escrever o código que recebe essa lista de movimentos do
jogo e descobre quem venceu, em qual rodada e em qual posição (linha ou coluna).

Veja o exemplo abaixo:

```
X->1
O->2
X->1
O->4
X->1
O->8
X->1
```

Com a sequência de movimentos acima, o tabuleiro ficou assim:

<img src="https://campuscode-site.s3.sa-east-1.amazonaws.com/codesaga/Lig4_800pxh_B.png", width=400, height=auto />

Então o retorno do seu código deveria ser: "X venceu, na rodada 7, na coluna 1".



