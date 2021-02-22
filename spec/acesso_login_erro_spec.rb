describe 'Forms' do

    it 'Login ou senha incorreto(s)' do
        visit 'http://laboratorio.mdacesso.com.br/logon.aspx'

        fill_in 'txtUsrLogin', with: 'AutomaticTestsNewAccess' 
        fill_in 'txtUserPassLogin', with: 'dmpruby2020'

        click_button 'Entrar'
        sleep 3 #temporario

       expect(find('#divIdBodyBusinessError').visible?).to be true
       
       expect(find('#divIdBodyBusinessError').text).to eql '- Senha ou login não conferem. Por favor, tente novamente.' #eql para comparar msg

       expect(find('#divIdBodyBusinessError').text).to include '- Senha ou login não conferem. Por favor, tente novamente.' #include para ver se contém msg no texto
       
       expect(find('#divIdBodyBusinessError')).to have_content '- Senha ou login não conferem. Por favor, tente novamente.' #para ver se contém msg direto no elemento

       puts('Senha ou login não conferem. Por favor, tente novamente!')
       click_button 'Ok'
       sleep 3 #temporario
    end
end