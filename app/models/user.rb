class User < ActiveRecord::Base

  has_one :user_summary
  has_many :educations
  has_many :skills

  validates :name, :uid, :email, presence: true

end
