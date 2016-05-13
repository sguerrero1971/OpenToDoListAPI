class Api::ItemsController < Api::BaseController

  before_action :authenticated?

  def index

    items = Item.all

    render json: items, each_serializer: ItemSerializer, status: 200

  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:title, :body)
  end
end
