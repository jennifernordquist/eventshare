class Group < ActiveRecord::Base
  attr_accessible :name

  belongs_to :event

  has_many :text_blasts
  has_many :email_blasts

end
