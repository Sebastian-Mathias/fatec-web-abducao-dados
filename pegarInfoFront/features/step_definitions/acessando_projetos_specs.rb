Entao("que o programa ja foi executado") do
    json_file = File.new("projetos.json", "w")
end
  
Quando("acesso a url {string}") do |url|
    visit(url)
end

E("verifico se estou na pagina correta {string}") do |url|
    expect(page).to have_current_path('http://www.cmmc.com.br/'+ url.to_s)
end

E("Atribuo os dados a uma variavel e {string}") do |tipo_projeto|
    @projetos = Projetos.new
    @lista = []
    i = 37
    # y = 0
    # nomeDado = ["numero= ", "autor= ","descricao= ", "estado= "]
    pagina = find_all("td")
    while(pagina[i].nil? !=true) do

        # @lista.push(nomeDado[y])
        @lista.push(pagina[i].text)
        i = i + 1
        # y = y + 1
        # if(y > 3)
        #     y = 0
        # end
    end
    puts @lista
    

end

Então("Salvo em um arquivo json") do
    @projetos.salvar_em_json(@lista)
end