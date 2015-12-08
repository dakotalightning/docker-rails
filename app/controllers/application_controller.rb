class ApplicationController < ActionController::Base

  include Clearance::Controller

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Override clearance's default `authenticate` method to use a user's
  # `username` instead of `email` for authentication.
  def authenticate(params)
    User.authenticate(
      params[:session][:username],
      params[:session][:password]
    )
  end


private

  def require_admin
    unless signed_in?
      deny_access
    end
  end

end
