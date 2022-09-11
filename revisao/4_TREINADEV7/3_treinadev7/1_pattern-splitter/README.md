# Rachadinha de padrões

Carl Oshu tem uma lista secreta em que salva as coordenadas onde guarda seus tesouros.
Cada coordenada é formada por uma *string* que se divide em duas partes. Por
exemplo: 'GGHHAC', em que a primeira parte é 'GGHH' e a segunda parte é
'AC'. A primeira é formada pelas letras G e H, enquanto a segunda parte, por A e
C.

Outros exemplos de possíveis coordenadas:

```
OPOPOPPDDD => OPOPOPP | DDD
TBTBBTBBTTSSCCSC => TBTBBTBBTT | SSCCSC
WQWWWQQWQWTHTH => WQWWWQQWQW | THTH
```

As coordenadas podem possuir pares de letras diferentes e número de caracteres
diferentes, mas dentro de uma lista, há sempre um padrão entre as coordenadas.

Listas de coordenadas serão mais ou menos assim:

```
# Exemplo 1

GGHHAC
HGGGCC
GGHHCA
HHHHAA

# Exemplo 2

FFFVVVFNCNC
VFFVVFVCCNN
FVVFVVFNNCC
```

Um "ráquer" supostamente invadiu o computador de Carl Oshu e roubou algumas dessas
listas. Nesse processo a separação entre as coordenadas foi perdida! Felizmente
sabemos que as coordenadas mantêm um mesmo padrão de formato em cada lista.

Neste desafio, você deve implementar o código que recebe uma *string* com uma
lista de coordenadas, encontra o padrão de repetição dessa lista e retorna um
*array* com cada coordenada separada, por exemplo:

```
String de entrada: 'GGHHACHGGGCCGGHHCAHHHHAA'

Retorno: ['GGHHAC','HGGGCC', 'GGHHCA', 'HHHHAA']
```
