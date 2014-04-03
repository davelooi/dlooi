class Education < ActiveRecord::Base
  belongs_to :institute
  belongs_to :user
  
  default_scope { order('graduate DESC') }
  
end
