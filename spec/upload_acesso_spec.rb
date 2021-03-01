describe 'Upload', :upload do

    before(:each) do
        visit 'http://laboratorio.mdacesso.com.br/logon.aspx'

        fill_in 'txtUsrLogin', with: 'AutomaticTestsNewAccess' 
        fill_in 'txtUserPassLogin', with: 'dmpruby2021'

        click_button 'Entrar'
        sleep 2

        visit 'http://laboratorio.mdacesso.com.br/Person/PersonsLst.aspx'
        click_button 'Cadastrar'
        sleep 2

        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
    end
    
    it 'Upload de imagem' do
        page.attach_file(@imagem) do
            page.find(:xpath, '/html/body/form/div[11]/div[2]/div[2]/div[2]/div[1]/div/div/div[1]/div[2]/div[3]').click
        end
    end

    after(:each) do
        sleep 3
    end
end