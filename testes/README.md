# Algoritmos da genética

## Fitas de nucleotídeos complementares

Rosalind Franklin (1920-1958) foi uma bioquímica britânica cujas contribuições
científicas permitiram compreender a estrutura da molécula de DNA. Em suas pesquisas 
junto com seu colega Maurice Wilkins (1916-2004) a partir de fotografias do padrão de 
difração de raios-X nas moléculas, foi possível perceber que eram constituídas por 
duas fitas em formato helicoidal.

Em conjunto com descobertas posteriores, hoje sabemos que o DNA é formado por uma
fita dupla de nucleotídeos encadeados em série em formato de "hélice dupla".
É composta basicamente por 4 tipos de nucleotídeos: Adenina (A), Timina (T),
Guanina (G) e Citosina (C). Uma fita de DNA é sempre complementar a outra, de
forma que A pareia somente com T e G pareia somente com C. Se fizermos uma
associação com programação, podemos dizer que as duas fitas de DNA são *strings*
compostas apenas por 4 letras – A, T, G, C – e que as duas fitas são sempre
complementares uma à outra.

Por exemplo:

<img src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/double_strand.png", width=400, height=auto />

Neste desafio você deve implementar o código do método que recebe uma *string* com
uma sequência de nucleotídeos e monta a *string* de DNA complementar a ela.
