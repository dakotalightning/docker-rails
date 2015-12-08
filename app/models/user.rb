class User < ActiveRecord::Base

  include Clearance::User

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, confirmation: true

end
