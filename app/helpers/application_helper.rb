module ApplicationHelper
  def page_title
    title = 'Family-Pet'
    title = @page_title + '-' + title if @page_title
    return title
  end
end
