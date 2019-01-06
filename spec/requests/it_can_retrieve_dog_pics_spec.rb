require 'rails_helper'

describe "Dog CEO Endpoint" do
  it 'returns 50 random dog pic urls' do
    facade = DogFacade.new
    expect(facade.doggies).to be_a(Array)
    expect(facade.doggies.count).to eq(50)
  end
end