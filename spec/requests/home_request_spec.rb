require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  it 'Shows Home Page As Root Path' do
    get root_path
    expect(response).to have_http_status(:ok)
  end
end
