module ApplicationHelper


def create_panel(title, &block)
  s = "<div class='panel'><h3>#{title}</h3>"
  b = capture(&block)
  e = "</div>"
  r = s + b + e
  r.html_safe
end


def create_collapse_panel(title: "Title", id: "collapseOne", hl_tag: "h4", open: false, &block)
  collapsed = ""
  if open
    collapsed = " in"
  end
  s = <<-eos

  <div class="panel panel-primary">
    <div class="panel-heading" role="tab">
    <a role="button" data-toggle="collapse" href="##{id}" aria-expanded="true" aria-controls"collapseEins">
      <#{hl_tag} class="panel-title">

          #{title}

      </#{hl_tag}>
      </a>
    </div>
    <div id="#{id}" class="panel-collapse collapse#{collapsed}" role="tabpanel" aria-labelledby="überschriftEins">
      <div class="panel-body">
  eos

  b = capture(&block)

  e = <<-eos
    </div>
  </div>
  </div>
  eos
  result = s + b + e
  result.html_safe
end



end
