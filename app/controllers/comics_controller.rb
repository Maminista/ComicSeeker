class ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
   
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
    
    @comments = @comic.comments
    @comment = Comment.new
  end

  def new
    @comic = Comic.new
  end
  
  def create
    @comic = Comic.new(comic_params)
    @comic.user_id = current_user.id
    if @comic.save
      redirect_to comic_path(@comic)
    else
      #renderはアクションを返さずビューに返す
      #今回の場合newアクションを行わず、new.html.erbに遷移する
      render :new
    end
  end

  def edit
    @comic = Comic.find(params[:id])
    if @comic.user != current_user
      redirect_to comics_path, alert: "不正なアクセスです"
    end
  end
  
  def update
    @comic = Comic.find(params[:id])
    if @comic.update(comic_params)
      redirect_to comic_path(@comic)
    else
      render :edit
    end
  end
  
  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    redirect_to comics_path
  end
  
  def ranking
    @all_ranks = Comic.find(Like.group(:comic_id).order('count(comic_id) desc').limit(100).pluck(:comic_id))
  end
  
  def search
    @comics = Comic.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

  private
  def comic_params
    params.require(:comic).permit(:title, :body, :image)
  end
end
