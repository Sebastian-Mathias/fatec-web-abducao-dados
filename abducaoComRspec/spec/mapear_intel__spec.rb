describe 'mapear dados' do
    require 'json'
    def pegar_resultados()
        @servidores = Acesso.get('/Transparencia/vencimentos2') 
        puts @servidores
    end

    def salvar_em_json()
        json_file = File.new("data/servidores.json", "w")
        json_file.puts(@servidores)
        json_file.close
    end
    
    context 'mapear' do
        before { pegar_resultados()}
        it 'com sucesso' do
            salvar_em_json()
        end
    end
end