class FavoritesController < ApplicationController
  
  def create
    @favorite = current_user.favorites.create(comic_id: params[:comic_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @comic = Comic.find(params[:comic_id])
    @favorite = current_user.favorites.find_by(comic_id: @comic.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
