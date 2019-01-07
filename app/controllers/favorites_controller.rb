class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(url: params[:url], user_id: current_user.id)
    if @favorite.save
      flash[:success] = "Favorite Dog Added"
      redirect_to dogs_path
    end
  end
end
