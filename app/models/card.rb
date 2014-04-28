class Card < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category
end
