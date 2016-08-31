module ApplicationHelper


def create_panel(title, &block)
  s = "<div class='panel'><h3>#{title}</h3>"
  b = capture(&block)
  e = "</div>"
  r = s + b + e
  r.html_safe
end



end
