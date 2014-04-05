class Education < ActiveRecord::Base
  belongs_to :institute
  belongs_to :profile
  
  default_scope { order('graduate DESC') }
  
end
