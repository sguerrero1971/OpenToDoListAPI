class List < ActiveRecord::Base
  belongs_to :user

  before_save { self.permission ||= :open }

  validates :permission, presence: true

  enum permission: [ :open, :viewable, :secret ]

end
