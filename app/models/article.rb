class Article < ActiveRecord::Base




  def style
    ret = ""
      if !attr_empty? inline_style
        ret += "#{inline_style}"
      end
      if !attr_empty? padding_top
        ret += "padding-top:#{padding_top};"
      end
      if !attr_empty? padding_bottom
        ret += "padding-bottom:#{padding_bottom};"
      end
    ret
  end

  def attr_empty?(attr)
    if attr == ""
      return true
    end
    false
  end

end
