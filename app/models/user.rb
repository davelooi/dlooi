class User < ActiveRecord::Base
  
  validates :name, :uid, :email, presence: true

end
