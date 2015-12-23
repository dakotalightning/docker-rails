class Admin::UsersController < Admin::BaseController

  before_action :require_login, except: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
      flash.notice = "Yay it worked."
      redirect_back_or root_path
    else
      flash.now.alert = "Fail! Something went wrong."
      render :new
    end
  end

  def show
    @user = User.find_by(username: params[:id])
  end

  def edit
    @user = User.find_by(username: params[:id])
  end

  def update
    @user = User.find_by(username: params[:id])

    if @user.update_attributes(user_params)
      redirect_to admin_user_path(@user), notice: "Yay it worked."
    else
      flash.now.alert = "Fail! Something went wrong."
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :username,
      :email,
      :password
    )
  end

end
