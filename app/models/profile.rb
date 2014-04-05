class Profile < ActiveRecord::Base

  has_one :user_summary
  has_many :educations
  has_many :skills
  has_many :skill_categories, -> { uniq }, :through => :skills
  has_many :languages
  has_many :jobs

  validates :name, :uid, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }

end
