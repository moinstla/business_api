require 'rails_helper'

describe "post exception route", :type => :request do

  before do
    post "/businesses", params: { name: '', business_type: 'test type', address: 'test address'}
  end

  it 'returns error message' do
    expect(JSON.parse(response.body)['message']).to eq "Validation failed: Name can't be blank"
  end

  it 'returns unprocessable entity status' do
    expect(response).to have_http_status 422
  end
end
