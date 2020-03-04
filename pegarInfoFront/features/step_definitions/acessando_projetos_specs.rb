Entao("que o programa ja foi executado") do
    json_file = File.new("projetos.json", "w")
end
  
Quando("acesso a url {string}") do |url|
    visit(url)
end

E("verifico se estou na pagina correta {string}") do |url|
    expect(page).to have_current_path('http://www.cmmc.com.br/'+ url.to_s)
end

E("Atribuo os dados a uma variavel") do
    @a = Projetos.new
    projetos= page.text()
    projetos= projetos.to_s
    projetos= projetos.split
    @projeto = @a.pegarProjetos(projetos)
    # a.salvar_em_json(projetos)

end

Então("Salvo em um arquivo json") do
    @a.salvar_em_json()
end