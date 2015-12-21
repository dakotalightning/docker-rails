class PagesController < ApplicationController

  def show
    @page = Page.find_by(permalink: params[:page])
  end

end
