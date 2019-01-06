class DogsController < ApplicationController
  def index
    @dogs = DogService.new
  end
end
