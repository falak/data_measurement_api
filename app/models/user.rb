class User < ApplicationRecord
  has_secure_password
  serialize :values
end
