# Caracteres únicos

Nós, seres humanos, temos cérebros programados para buscar e identificar padrões no mundo a nossa volta.
Esse instinto é tão forte que encontramos padrões até onde não tem!

Mas nesse desafio vamos usar essa habilidade para identificar padrões em sequências de caracteres.
Você vai implementar o método que recebe uma *string* com grupos de letras separados por espaço em branco
e contar quantos caracteres únicos cada trecho possui.

Exemplo:

```
abc abc ab ac aaaa b
```

Quebramos as sequências pelos espaços entre eles

```
abc
abc
ab
ac
aaaa
b
```

e somamos os caracteres únicos de cada pedaço

```
abc  → 3
abc  → 3
ab   → 2
ac   → 2
aabb → 2
aaaa → 1
b    → 1 +
    ------
      14
```

dando um total de 14 caracteres únicos nessa sequência.
