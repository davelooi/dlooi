class User < ActiveRecord::Base

  has_one :user_summary

  validates :name, :uid, :email, presence: true

end
