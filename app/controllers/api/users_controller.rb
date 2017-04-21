class Api::UsersController < ApiController
  def login
    user = User.find_by(username: params[:username])
    if user && user.password == params[:password]
      render json: {success: true, user: user.as_json(User::Json::SHOW)}
    else
      render json: {success: false}
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json:{success: true, user: user.as_json(User::Json::SHOW)}
    else
      render json: {success: false}
    end
  end

  def create
    user= User.new(load_user_params)
    if user.save
      render json: {success: true, message: 'User was created successfully.',user: user.as_json(User::Json::SHOW)}
    else
      render json: {success: false, message: 'Couldn\'t create user'}
    end
  end

  protected

  def load_user_params
    params.permit(:name, :username, :password)
  end
end
