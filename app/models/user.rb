class User < ApplicationRecord
  include Clearance::User
  has_one :cart
end
