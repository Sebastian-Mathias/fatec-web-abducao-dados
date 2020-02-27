describe 'mapear dados' do
    def pegar_resultados()
        @acessar = Acesso.get('/Transparencia/vencimentos2') 
        puts @acessar
    end
    
    context 'mapear' do
        before { pegar_resultados()}
        it 'com sucesso' do
            
        end
    end
end