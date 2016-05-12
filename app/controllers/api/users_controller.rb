class Api::UsersController < Api::BaseController

  before_action :authenticated?

  def index

    users = User.all

    render json: users, each_serializer: UserSerializer, status: 200

  end
end
