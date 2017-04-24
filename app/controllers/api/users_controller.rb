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
    if User.find_by(username: params[:username])
      render json: {success: false, message: 'Nombre de usuario ya está en uso.'}
    else
      user= User.new(load_user_params)
      if user.save
        render json: {success: true, message: 'User was created successfully.',user: user.as_json(User::Json::SHOW)}
      else
        render json: {success: false, message: 'Error al crear el usuario. Intente de nuevo.'}
      end
    end
  end

  protected

  def load_user_params
    params.permit(:name, :username, :password)
  end
end
