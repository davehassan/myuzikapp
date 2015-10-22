class UsersController < ApplicationController

  before_action :require_logged_out, only: :new

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def destroy
  end

  def show
    render :show
  end

  def index
    @users = User.all
    render :index
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end