# Jogo do Millennial

Mais comumente conhecido como Jogo da Velha, esse é um passatempo popular super simples.
Neste jogo, dois participantes alternam turnos fazendo marcas (um com 'X' outro com 'O')
num tabuleiro de proporção 3 por 3. Ganha quem conseguir fazer 3 marcas iguais
em linha na vertical, horizontal ou diagonal.

Duas crianças entediadas decidiram brincar de Jogo da Velha. Resolveram jogar 
3 partidas consecutivas, marcando cada movimento num papel e, ao final, quem ganhasse mais
rodadas, venceria o jogo.

Neste desafio, você deve implentar o código que recebe uma sequência de
movimentos que indica a posição das marcações e, ao final, deve retornar a pessoa
que teve maior número de vitórias.

Note que todos os movimentos das 3 partidas são apresentados consecutivamente.
Quando algum jogador vence uma rodada, o tabuleiro é zerado e a rodada seguinte
começa. Se nenhum jogador conseguir fazer 3 marcas em linha até não haver
mais casas disponíveis, considera-se um empate e o tabuleiro é zerado para
começar a rodada seguinte.

Exemplo:

```
        X->1,1
        O->2,0
        X->1,0
        O->0,2
        X->1,2 = Vitória de X
        X->1,1
        O->2,0
        X->1,0
        O->0,2
        X->1,2 = Vitória de X
        X->1,1
        O->1,2
        X->1,0
        O->0,2
        X->2,2
        O->0,0
        X->0,1
        O->2,1
        X->2,0 = Empate
```

Dada a sequência acima de ações, 'X' tem duas vitórias depois há um empate.
