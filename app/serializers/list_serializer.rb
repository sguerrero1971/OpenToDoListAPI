class ListSerializer < ActiveModel::Serializer
  attributes :id, :group

  def group
    object.group
  end

end
