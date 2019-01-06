class DogsController < ApplicationController
  def index
    @dogs = DogFacade.new
  end
end
