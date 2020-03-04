class Projetos
    def pegarProjetos(projetos)
        
        
        @projeto = " "
        i = 0
        while(i<500) do
            if projetos[i] == "ANOTAÇÃO"
    
                while(i < 1000) do
                    i = i + 1
    
                    if(projetos[i] == "«")
                        break
                    end

                    @projeto = @projeto + " " + projetos[i].to_s
                end
            end
            i = i + 1
        end
    end

    def salvar_em_json()
        puts @projeto
        json_file = File.new("projetos.json", "a")
        json_file.write(@projeto)
        json_file.close
    end
end