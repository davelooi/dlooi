class Skill < ActiveRecord::Base
  belongs_to :skill_category
  belongs_to :profile
end
