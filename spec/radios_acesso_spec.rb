describe 'Botões de Radio', :radio do

    before(:each) do
        visit 'http://laboratorio.mdacesso.com.br/logon.aspx'

        fill_in 'txtUsrLogin', with: 'AutomaticTestsNewAccess' 
        fill_in 'txtUserPassLogin', with: 'dmpruby2021'

        click_button 'Entrar'
        sleep 3

        visit 'http://laboratorio.mdacesso.com.br/ExportingAccessLogs/ExportingAccessLog.aspx'
        sleep 3
    end
    
    it 'Seleção por ID' do
        choose('MainContentMainMaster_MainContent_rdbSchedule')
    end

    after(:each) do
        sleep 3
    end
end