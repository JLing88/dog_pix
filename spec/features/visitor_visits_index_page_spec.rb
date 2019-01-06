require 'rails_helper'

describe 'As a visitor' do
  context 'they visit /dogs' do
    it 'displays a navbar with option to login and sign up' do
      visit '/dogs'

      within '.navbar' do
        expect(page).to have_content('Login')
        expect(page).to have_content('Sign Up')
      end
    end

    it "displays a header called Today's Dog Pix" do
      visit '/dogs'

      expect(page).to have_content("Today's Dog Pix")
    end

    it 'displays 50 dog pictures' do
      visit '/dogs'

      within('.dogs') do
        expect(all("img").count).to eq(50)
      end
    end
  end
end