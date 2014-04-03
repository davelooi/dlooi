class Cheat < ActiveRecord::Base
  belongs_to :product
  
  validates :product_id, :cheat, presence: true
end
