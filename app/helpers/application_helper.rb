module ApplicationHelper


def create_panel(title, &block)
  s = "<div class='panel'><h3>#{title}</h3>"
  b = capture(&block)
  e = "</div>"
  r = s + b + e
  r.html_safe
end


def create_accordion_panel(title: "Title", id: "accordion", &block)
  s = "<h3>#{title}</h3>"
  b = capture(&block)
  e = ""
  result = s + b + e
  result.html_safe
end



end
