# Pedra Papel Tesoura

**Pedra Papel Tesoura** é um jogo rápido em que duas pessoas esticam uma de suas
mãos simultaneamente mostrando um símbolo, que pode significar "pedra", "papel" ou
"tesoura". Quando os símbolos são comparados é decidido quem vence a rodada:

- Pedra ganha de tesoura.
- Tesoura ganha de papel.
- Papel ganha de pedra.

Neste desafio, você deve implementar o código que recebe uma sequência de
jogadas de Pedra Papel Tesoura, processa o resultado e, ao final, retorna a
quantida de empates e vitórias de cada jogador, se houver.

Por exemplo, considere a seguinte sequência de jogadas:

```
  Jogador A vs Jogador B
  ======================
      pedra vs tesoura
      papel vs tesoura
    tesoura vs papel
      papel vs pedra
      pedra vs papel
```

Depois de passar por cada rodada, **A** tem 3 vitórias e **B** tem 2 vitórias.

Dica: em *strings*, uma quebra de linha é indicada com '\n'.
