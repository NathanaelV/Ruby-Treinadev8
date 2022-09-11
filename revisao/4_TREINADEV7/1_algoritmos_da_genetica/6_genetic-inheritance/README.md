# Herança biológica

Os genes são determinantes na herança biológica. Eles vêm em pares dentro de todo o
conjunto de genes que compõem o genoma de um organismo.

Na produção de gametas, cada unidade do par se separa. Consequentemente, cada
gameta carrega dentro de si somente um dos membros do par de genes. No processo 
de fertilização, união de dois gametas para formar um zigoto (um novo indivíduo),
a combinação dos genes é aleatória.



Geração parental: Gg x gg

Gametas: G g g g

Possíveis combinações de gametas:

|  | G | g
|--|--|--|
| g | Gg | gg |
| g | Gg | gg |

Neste desesafio, você deve implementar o código do método que recebe *strings*
com a combinação de genes da geração parental e retorna um *array* com os
possíveis resultados da combinação de gametas e suas proporções. No exemplo
acima, o método receberia `"Gg", "gg"` e retornaria:

```
[["Gg", 1/2], ["gg", 1/2]]

```

Dica: em Ruby, para podermos representar números racionais em frações de
inteiros, usamos o método `to_r`. Você vai precisar usá-lo para apresentar as
proporções da combinações de genes do desafio.
