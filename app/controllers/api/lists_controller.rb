class Api::ListsController < Api::BaseController
  def index

    lists = User.all

    render json: lists, each_serializer: ListSerializer, status: 200

  end
end
