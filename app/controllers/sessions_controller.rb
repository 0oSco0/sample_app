class SessionsController < ApplicationController
  def new
  end
  
  def create
   user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      # 登入用户，然后重定向到用户的资料页面
      log_in user
      redirect_to user
    else
      # エラーメッセージを作成する
      # 创建一个错误消息
      flash[:danger] = 'Invalid email/password combination' # 本当は正しくない
      # 不完全正确
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
