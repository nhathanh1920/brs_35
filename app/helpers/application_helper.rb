module ApplicationHelper

  def full_title page_title = ""
    base_title = t "project_name"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def current_number per_page, index, current_page
    per_page * (current_page - 1) + index + 1
  end
end
