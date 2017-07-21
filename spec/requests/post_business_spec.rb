require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post "/businesses", params: { :name => 'test_name', :business_type => 'test_business_type', :address => 'test_address' }
  end

  it 'returns the name of the business' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the type of business' do
    expect(JSON.parse(response.body)['business_type']).to eq('test_business_type')
  end
  it 'returns the address of business' do
    expect(JSON.parse(response.body)['address']).to eq('test_address')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
