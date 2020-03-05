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
    @a = Projetos.new
    projetos= page.text()
    projetos= projetos.to_s
    projetos= projetos.split
    
    lista = " "
    lista = "\n\n"+lista + tipo_projeto.to_s + "\n"
    i = 0
    while(i<500) do
        if projetos[i] == "ANOTAÇÃO"
            while(i < 1000) do
                i = i + 1

                if(projetos[i] == "«")
                    break
                end
                j = 0
                while(j<50 ) do
                    if(projetos[i] == (j.to_s + "/20"))
                        lista = lista + "\n"
                        lista = lista + "link: "+ find_link((j.to_s + "/20").to_s)[:href]
                    end
                    j = j + 1
                end
                lista = lista + " " + projetos[i].to_s
                
            end
        end
        i = i + 1
    end
    @lista = lista
end

Então("Salvo em um arquivo json") do
    @a.salvar_em_json(@lista)
end