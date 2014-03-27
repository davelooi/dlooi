class User < ActiveRecord::Base

  has_one :user_summary
  has_many :educations
  has_many :skills
  has_many :skill_categories, -> { uniq }, :through => :skills
  has_many :languages
  has_many :jobs

  validates :name, :uid, :email, presence: true

end
