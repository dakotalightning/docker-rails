class Admin::UsersController < Admin::BaseController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
      flash.notice = t(".success")
      redirect_back_or root_path
    else
      flash.now.alert = t(".fail")
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user), notice: t(".success")
    else
      flash.now.alert = t(".fail")
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
