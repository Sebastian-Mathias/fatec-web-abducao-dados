Quando("acesso a url") do
    visit('/projetos/plo.php')
end

E("verifico se estou na pagina correta") do
    expect(page).to have_current_path('http://www.cmmc.com.br/projetos/plo.php')
end

E("Atribuo os dados a uma variavel") do
    #atribuir o numero do projeto
    x = 0
    key = false
    while key != true do
        x = x + 1
        puts x.to_s + "/20"
        if page.has_link?(x.to_s + "/20") != true
            break
        end
    end

end

Então("Salvo em um arquivo json") do
end