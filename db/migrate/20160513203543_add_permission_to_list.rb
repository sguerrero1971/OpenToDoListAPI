class AddPermissionToList < ActiveRecord::Migration
  def change
    add_column :lists, :permission, :integer
  end
end
