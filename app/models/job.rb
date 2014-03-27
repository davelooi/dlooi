class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
  
  default_scope order('start DESC')
  
end
