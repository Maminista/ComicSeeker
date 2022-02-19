class CommentsController < ApplicationController
  before_action :set_comic
  before_action :authenticate_user!

  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back(fallback_location: root_path) 
    else
      redirect_back(fallback_location: root_path)
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_back(fallback_location: root_path)
    else
      flash.now[:alert] = 'コメント削除に失敗しました'
      render comic_path(@comic)
    end
  end
  
  private
    def set_comic
      @comic = Comic.find(params[:comic_id])
    end
    def comment_params
      params.require(:comment).permit(:content, :comic_id) #追加
    end
end
