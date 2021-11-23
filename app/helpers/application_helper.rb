module ApplicationHelper
  def resize_text(text, num)
    text.size > num ? text.slice(0, num) + "..." : text
  end
end
