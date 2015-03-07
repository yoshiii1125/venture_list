require 'rails_helper'

describe 'GET /static_pages' do
  it 'works! (now write some real specs)' do
    get static_pages_index_path
    expect(response).to have_http_status(200)
  end
end
