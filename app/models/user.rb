class User < ActiveRecord::Base

  has_one :user_summary
  has_many :educations
  has_many :skills
  has_many :skill_categories, -> { uniq }, :through => :skills

  validates :name, :uid, :email, presence: true

end
