class UsersController < ApplicationController
  # deviseによりauthenticate_user!とすることでアクセス制限ができる
  before_action :authenticate_user!, except: [:index]
  
  def index
    #ユーザの情報が複数あるためインスタンス変数は複数形にする
    #Userモデルからユーザの情報をすべて取得する
    @users = User.all
  end

  def show
    #1人のユーザのデータのみを取得するため単数形
    #controllerのactionでインスタンス変数を定義してviewに渡すのが大体のパターン
    #paramsはURLからUserモデルのidを取得する
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, alert: "不正なアクセスです"
    end
  end
  
  def update
    #どのユーザを編集(更新)するのかを取得
    @user = User.find(params[:id])
    #どのカラムを更新するのかを引数により指定する
    #user_paramsはストロングパラメータ
    if @user.update(user_params)
      #画面の転移先は各ユーザの詳細ページ
      redirect_to user_path(@user), notice: "更新に成功しました"
    else
      render :edit
    end
  end
  
  private
  def user_params
    
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  
  end
    
    
end
