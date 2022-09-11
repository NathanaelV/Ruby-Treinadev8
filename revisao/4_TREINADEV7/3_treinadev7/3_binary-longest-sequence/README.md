# Contando repetições em binários

No mundo fantasioso da minha mente perturbada, existe uma sequência matemática
chamada SMLDNRDCB, ou "Sequência mais longa de números repetidos da conversão
binária". Para calcular esse valor é necessário seguir os seguintes passos:


- Dada uma sequência inicial, por exemplo `2-0-11`, convertemos cada número pelo
  seu correspondente em binários: `10-0-1011`.

- Em seguida, pegamos cada um desses binários e avaliamos qual é a maior sequência de repetição do seu último número.

Por exemplo, em `1011`, o último número é `1`, e a sequência mais longa de repetição dele é `11`, então o resultado é `2`.

 Se o binário fosse `11100110001010`, o resultado seria `3`.

- Finalmente juntamos as contagens de cada binário da sequência inicial e a
  resposta final seria `112`.


Neste desafio você deve implementar o código que recebe uma sequência de números
e retorna ao final a sequência matemática imaginária SMLDNRDCB.

Mais alguns exemplos:

```
11-10 => 1011-1010 => 21

200-21-135-5 => 11001000-10101-10000111-101 => 3131
```




