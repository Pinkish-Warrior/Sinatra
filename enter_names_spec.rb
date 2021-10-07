# in spec/features/enter_names_spec.rb
feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Player1'
      fill_in :player_2_name, with: 'Player2'
      click_button 'Submit'
      
      save_and_open_page

      expect(page).to have_content 'Player1 vs. Player2'
    end
  end
  