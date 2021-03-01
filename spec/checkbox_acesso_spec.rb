describe 'Caixa de seleção', :checkbox do

    before(:each) do
        visit 'http://laboratorio.mdacesso.com.br/logon.aspx'

        fill_in 'txtUsrLogin', with: 'AutomaticTestsNewAccess' 
        fill_in 'txtUserPassLogin', with: 'dmpruby2021'

        click_button 'Entrar'
        sleep 2

        visit 'http://laboratorio.mdacesso.com.br/Person/ChangePersonSituation.aspx'
        sleep 3
    end
    
    it 'Marcando e desmarcando primeira caixa com check' do
        check('MainContentMainMaster_MainContent_ChangePersonSituationControl_gv_LookUpSituations_chk_Selected_0')
   
        uncheck('MainContentMainMaster_MainContent_ChangePersonSituationControl_gv_LookUpSituations_chk_Selected_0')
    end

    it 'Marcando e desmarcando segunda caixa com find' do
        find('input[id=MainContentMainMaster_MainContent_ChangePersonSituationControl_gv_LookUpSituations_chk_Selected_1]').set(true)

        find('input[id=MainContentMainMaster_MainContent_ChangePersonSituationControl_gv_LookUpSituations_chk_Selected_1]').set(false)
    end

    after(:each) do
        sleep 3
    end
end