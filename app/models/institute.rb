class Institute < ActiveRecord::Base

  def to_s
    "#{name}, #{location}"
  end

end
