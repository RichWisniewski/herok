class Review < ActiveRecord::Base
  attr_accessible :comment, :name
  belongs_to :restaurant
  validates :name, :presence => true
  validates :comment, :presence => true
end
