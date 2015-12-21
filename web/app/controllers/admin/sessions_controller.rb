class Admin::SessionsController < Clearance::SessionsController

  layout "minimal"

  skip_before_action :set_return_to

  def new
    # We need this empty action so the correct template is rendered.
  end

private

  def url_after_destroy
    root_path
  end

  def url_after_create
    user_path(current_user)
  end

end
