class UserSummary < ActiveRecord::Base
  belongs_to :company
  belongs_to :profile
end
