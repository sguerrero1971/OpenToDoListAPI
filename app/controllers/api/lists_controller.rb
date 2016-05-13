class Api::ListsController < Api::BaseController

  before_action :authenticated?

  def index

    lists = List.all

    render json: lists, each_serializer: ListSerializer, status: 200

  end

  def create
    list = List.new(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:list).permit(:group, :user_id)
  end
end
