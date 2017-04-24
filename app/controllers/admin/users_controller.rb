class Admin::UsersController < AdminController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    if User.find_by(username: params[:user][:username])
      flash[:danger] = "Username " + params[:user][:username] + " already in use."
      redirect_to new_admin_user_path
    else
      @user = User.new(load_user_params)
      if @user.save
        redirect_to admin_users_path
      else
        redirect_to new_admin_user_path
      end
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if User.where.not(id: params[:id]).find_by(username: params[:user][:username])
      flash[:danger] = "Username " + params[:user][:username] + " already in use."
      redirect_to edit_admin_user_path
    else
      @user = User.find(params[:id])
      if @user.update(load_user_params)
        redirect_to admin_users_path
      else
        redirect_to edit_admin_user_path
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
  end

  protected

  def load_user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
