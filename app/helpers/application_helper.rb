module ApplicationHelper
  
  def site_name
    # Change the value below between the quotes.
    "dLooi"
  end

  def page_title(separator = " | ")
    [content_for(:title), site_name].compact.join(separator)
  end

  def page_heading(title)
    content_for(:title){ title }
    content_tag(:h1, title)
  end

end
