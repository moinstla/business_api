require 'rails_helper'

describe "get business path" do

  before do
    business = FactoryGirl.create(:business)
    get "/businesses/#{business.id}"
  end

  it 'returns a business' do
    expect(JSON.parse(response.body).size).to eq 4
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
