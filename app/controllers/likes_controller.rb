class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(comic_id: params[:comic_id])
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @comic = Comic.find(params[:comic_id])
    @like = current_user.likes.find_by(comic_id: @comic.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
  
end
