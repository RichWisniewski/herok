class Restaurant < ActiveRecord::Base
  attr_accessible :name
  has_many :reviews
  validates :name, :presence => true
end