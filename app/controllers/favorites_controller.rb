class FavoritesController < ApplicationController

  def index
    @dogs = Favorite.where(user_id: current_user.id)
   
  end

  def create
    @favorite = Favorite.new(url: params[:url], user_id: current_user.id)
    if @favorite.save
      flash[:success] = "Favorite Dog Added"
      redirect_to favorites_path
    end
  end
end
