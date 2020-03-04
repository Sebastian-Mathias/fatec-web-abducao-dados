#language: pt

Funcionalidade: Acessar e recuperar dados da pagina de projetos

Cenario: Nova execução do programa
Entao que o programa ja foi executado
 

Esquema do Cenario: Obter dados dos projetos e salva-los em json
Dado acesso a url "<url>"
Entao verifico se estou na pagina correta "<url>"
Entao Atribuo os dados a uma variavel
Então Salvo em um arquivo json

Exemplos:
                  |url|
                  |projetos/plo.php|
                  |projetos/plo.php?pg=1&textfield_num=&textfield_assunto=&textfield_autor=&ano=2020|
                  |projetos/plc.php|
                  |projetos/pelo.php|
                  |projetos/pdl.php|
                  |projetos/pr.php|
                  