# DNA: tradução

## O processo de produção de proteínas

Para resolver este desafio, é interessante que você já tenha solucionado os
outros algoritmos de genética do Code Saga. Eles te dão uma
base de conceitos para resolver este.

O processo de síntese de proteínas por meio do RNA mensageiro (RNAm)
é chamado de tradução gênica. Nele, um
ribossomo se acopla ao RNAm e "lê" a sequência de nucleotídeos de três em três.
Cada trio de nucleotídeos, chamados de **códon**, será traduzido em um aminoácido.

Para garantir que o aminoácido correto seja utilizado, ele é sempre
transportado por um RNA transportador (RNAt). Cada RNAt possui em sua estrutura o
**anticódon** específico, cuja sequência de nucleotídeos é complementar ao **códon**
do RNAm. Veja o exemplo abaixo:

<img src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/traducao1.png", width=350, height=auto />

Dessa forma, o ribossomo "lê" cada códon do RNAm e, com ajuda do RNAt, acopla o
aminoácido correto. Ao final, temos um encadeamento de aminoácidos que compõem
uma proteína.

Neste desafio, você deve implementar o código do método que recebe um RNAm e
retorna a sequência de aminoácidos que compõem a proteína. Use a tabela abaixo
de aminoácidos e seus RNAt como base para seu código.

<img src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/traducao2.png", width=200, height=auto />

Observação: os conceitos de genética apresentados neste desafio estão
simplificados e foram adaptados ao exercício de programação proposto.
