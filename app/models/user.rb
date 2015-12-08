class User < ActiveRecord::Base

  include Clearance::User

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, confirmation: true

  ##
  # Authentication configuration (clearance gem)
  #
  def self.authenticate(username, password)
    return nil  unless user = find_by_username(username)
    return user  if user.authenticated?(password)
  end

  ##
  # Instance Methods
  #
  def display_name
    #{ first_name } #{ last_name }"
  end

end
