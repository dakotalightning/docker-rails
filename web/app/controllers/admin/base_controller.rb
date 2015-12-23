class Admin::BaseController < ApplicationController

  layout "admin"

  before_action :require_login

  def dashboard
  end

private

  def require_admin
    unless signed_in?
      deny_access
    end
  end

  def url_after_denied_access_when_signed_in
    root_path
  end

  def url_after_denied_access_when_signed_out
    admin_signin_path
  end

end
