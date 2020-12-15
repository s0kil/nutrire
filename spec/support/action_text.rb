require 'action_text/system_test_helper'

# https://github.com/rails/rails/blob/master/actiontext/lib/action_text/system_test_helper.rb
RSpec.configure do |config|
  config.include ActionText::SystemTestHelper, type: :feature
end
