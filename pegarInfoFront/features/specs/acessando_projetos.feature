#language: pt

Funcionalidade: Acessar e recuperar dados da pagina de projetos

Cenario: Nova execução do programa
Entao que o programa ja foi executado
 

Esquema do Cenario: Obter dados dos projetos e salva-los em json
Dado acesso a url "<url>"
Entao verifico se estou na pagina correta "<url>" 
Entao Atribuo os dados a uma variavel e "<tipo_projeto>"
Então Salvo em um arquivo json

Exemplos:
                  |url                                                                              |tipo_projeto                       |
                  |projetos/plo.php                                                                 |PROJETO DE LEI ORDINARIA           |
                  |projetos/plo.php?pg=1&textfield_num=&textfield_assunto=&textfield_autor=&ano=2020|PROJETO DE LEI ORDINARIA           |
                  |projetos/plc.php                                                                 |PROJETO DE LEI COMPLEMENTAR        |
                  |projetos/pelo.php                                                                |PROJETO DE EMENDA À LEI ORGÂNICA   |
                  |projetos/pdl.php                                                                 |PROJETOS DE ESCRETO LEGISLATIVO    |
                  |projetos/pr.php                                                                  |PROJETOS DE RESOLUÇÃO              |
                  