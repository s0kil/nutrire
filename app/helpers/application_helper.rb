module ApplicationHelper
  def image_or_placeholder(options)
    url = options[:url]
    size = options[:size] || 500
    seed = options[:seed] || "image-#{rand(1..1000)}"

    return url unless url.nil?

    "https://picsum.photos/seed/#{seed}/#{size}"
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
