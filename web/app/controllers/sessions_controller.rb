class SessionsController < Clearance::SessionsController

  skip_before_action :set_return_to

private
  def url_after_destroy
    root_path
  end

  def url_after_create
    user_path(current_user)
  end

end
