require 'rails_helper'

describe 'As a visitor' do
  context 'they visit /dogs' do
    it 'displays a navbar with option to login and sign up' do
      visit '/dogs'
      save_and_open_page
      within '.navbar' do
        expect(page).to have_content('Login')
        expect(page).to have_content('Sign Up')
      end
    end
  end
end