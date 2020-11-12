module ApplicationHelper
  def flash_message
    tag.div(class: 'flash') do
      flash.map do |key, value|
        tag.div(value, class: "flash #{key}")
      end
    end
  end

  def image_or_placeholder(url, size = 500)
    url || "https://picsum.photos/#{size}"
  end

  def categories_navigation
    categories = Category.all

    links = categories.reduce('') do |html, category|
      html << %(
        <li class="uppercase">
          #{link_to(category.title, category_path(category.title), class: 'hover:underline')}
        </li>
      )
    end

    sanitize(
      %(
        <ul class="flex space-x-4">#{links}</ul>
      ).delete("\n")
    )
  end
end
