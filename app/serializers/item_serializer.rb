class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  def title
    object.title
  end

  def body
    object.body
  end

end

