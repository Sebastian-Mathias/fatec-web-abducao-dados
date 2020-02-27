module Acesso
    include HTTParty
    base_uri 'http://www.licitacao.pmmc.com.br'
    format :json
    headers Accept: 'application/vnd.taskmaster.v2',
                    'Conten-Type:': 'application/json'
end