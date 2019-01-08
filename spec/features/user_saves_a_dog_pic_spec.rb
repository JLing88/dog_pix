require 'rails_helper'

describe 'As a logged in user' do
  context 'they visit /dogs and click on Save' do
    it 'saves their favorite photo and redirects to /favorites' do
      user = FactoryBot.create(:user)
      login_as(user, :scope => :user)

      visit '/'

      first('.card-body').click_button('Save')
      expect(current_path).to eq '/favorites'
    end
  end
end