class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # User.new(name: "Foo Bar", email: "foo@invalid", password: "foo", password_confirmation: "bar") と同義
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the sample app!"
      # redirect_to user_url(@user)と同義
      redirect_to @user
    else
      # status: unprocessable_entity => HTTPステータスコード 422 Unprocessable Entity
      render 'new', status: :unprocessable_entity
    end
  end

  private
    # User.new(params[user_params])でパラメータを直接newするのではなく、フィルターをかける
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
