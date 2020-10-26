module ApplicationHelper
  def flash_message
    tag.div(class: 'flash') do
      flash.map do |key, value|
        tag.div(value, class: "flash #{key}")
      end
    end
  end
end
