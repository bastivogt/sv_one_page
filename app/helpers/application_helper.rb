module ApplicationHelper


def create_panel(title, &block)
  s = "<div class='panel'><h3>#{title}</h3>"
  b = capture(&block)
  e = "</div>"
  r = s + b + e
  r.html_safe
end


def create_accordion_panel(title: "Title", id: "accordion", hl_tag: "h4", open: false, &block)
  collapsed = ""
  if open
    collapsed = " in"
  end
  s = <<-eos
  <div class="panel-group" id="#{id}" role="tablist" aria-multiselectable="true">
  <div class="panel panel-primary">
    <div class="panel-heading" role="tab">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="##{id}" href="#collapseEins" aria-expanded="true" aria-controls"collapseEins">
          #{title}
        </a>
      </h4>
    </div>
    <div id="collapseEins" class="panel-collapse collapse#{collapsed}" role="tabpanel" aria-labelledby="überschriftEins">
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
