class Api::UsersController < Api::BaseController
  def index

    users = User.all

    render json: users, each_serializer: UserSerializer, status: 200

  end
end
