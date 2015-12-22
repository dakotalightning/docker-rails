module ApplicationHelper

  # Returns link wrapped in <li> with class="active" if it's the current page
  def link_to_in_li(body, url, html_options = {})
    active = "active"  if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end

  # markdown helper, usage <%= markdown(@blog.body) %>
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, no_intra_emphasis: true, fenced_code_blocks: true, disable_indented_code_blocks: true)
    markdown.render(text).html_safe
  end

end
