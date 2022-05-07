module ApplicationHelper
  include Pagy::Frontend

  def content_id
    "#{controller_name.underscore}_#{action_name}"
  end

  def nav_link_to(text, url, options={})
    link_to(text, url, options.merge(class: nav_link_class(url)))
  end

  def nav_link_class(url)
    page_active?(url) ? "active" : ""
  end

  def page_active?(url)
    current_page?(url) ||
      case url
      when baits_path
        current_page?(root_path)
      when tackle_box_items_path
        current_page?("#{tackle_box_items_path}/#{params[:id]}")
      else
        false
      end
  end

  def current_second
    "00:#{Time.now.strftime('%S')}"
  end
end
