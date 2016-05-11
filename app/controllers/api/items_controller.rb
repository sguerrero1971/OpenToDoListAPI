class Api::ItemsController < Api::BaseController
  def index

    items = User.all

    render json: items, each_serializer: ItemSerializer, status: 200

  end
end
