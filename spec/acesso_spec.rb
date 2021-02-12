describe "Login Acesso" do

    it "Abrindo a página - Acesso" do
        visit "http://laboratorio.mdacesso.com.br/logon.aspx"
        sleep 6 #temporario
        expect(page.title).to eql "Sistema de Controle de Acesso"
    end
end