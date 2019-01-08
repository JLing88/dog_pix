require 'rails_helper'

describe 'As a logged in user' do
  context 'they visit /favorites and click on Delete' do
    it 'deletes their photo and redirects to /favorites' do
      user = FactoryBot.create(:user)
      allow_any_instance_of(FavoritesController).to receive(:current_user).and_return(user)
      login_as(user, :scope => :user)
      dog = Favorite.create!(user_id: user.id, url: "https://images.dog.ceo/breeds/frise-bichon/stevebaxter_bichon_frise.jpg")

      visit '/favorites'
      expect(page).to have_css(".dog-#{dog.id}")
      click_button('Delete')
      expect(current_path).to eq '/favorites'
      expect(page).to have_no_css(".dog-#{dog.id}")
    end
  end
end