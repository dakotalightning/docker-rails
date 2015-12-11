module Constraints

  class Page

    # This is a routing constraint used to dynamically create top-level routes
    # for all pages by their `permalink`.
    def matches?(request)
      request.params[:page] =~ /#{ ::Page.all.map { |c| c.permalink }.join("|") }/
    end

  end

end
