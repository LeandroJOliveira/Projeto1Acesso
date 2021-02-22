describe 'Caixa de seleção', :dropdown do

    it 'Selecionando item simples' do
 
        visit 'http://laboratorio.mdacesso.com.br/logon.aspx'

        fill_in 'txtUsrLogin', with: 'AutomaticTestsNewAccess' 
        fill_in 'txtUserPassLogin', with: 'dmpruby2021'

        click_button 'Entrar'
        sleep 3

       expect(find('#systemLogo').visible?).to be true
       
       #expect(find('#systemLogo').text).to eql 'Logo' #eql para comparar msg

       expect(find('#systemLogo').text).to include 'Logo' #include para ver se contém msg no texto
       
       expect(find('#systemLogo')).to have_content 'Logo' #para ver se contém msg direto no elemento

        visit 'http://laboratorio.mdacesso.com.br/Person/ChangePersonSituation.aspx'
        select('PERMITIDO', from: 'MainContentMainMaster_MainContent_ChangePersonSituationControl_ddlSituation')

        click_button 'Buscar'
        sleep 3
    end

end