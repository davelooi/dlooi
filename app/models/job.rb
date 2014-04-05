class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :profile
  
  default_scope { order('start DESC') }
  
end
