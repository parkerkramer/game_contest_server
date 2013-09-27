class User < ActiveRecord::Base
  has_secure_password
  def attribute
    @attribute
  end
  def attributes=(new_value)
    @attribute = new_value
  end
end
