class FavoritesController < ApplicationController

  def index
    if current_user
      @dogs = Favorite.where(user_id: current_user.id)
    else
      render file: "#{Rails.root}/public/404", layout: true, status: :not_found
    end
  end

  def destroy
    dog = Favorite.find(params[:id])
    dog.destroy
    redirect_to favorites_path
    flash[:success] = "Favorite Dog Deleted"
  end

  def create
    @favorite = Favorite.new(url: params[:url], user_id: current_user.id)
    if @favorite.save
      flash[:success] = "Favorite Dog Added"
      redirect_to favorites_path
    end
  end
end
