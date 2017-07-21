require 'rails_helper'

describe 'get exception route', type: :request do

  before do
    business = FactoryGirl.create(:business)
    get "/businesses/7"
  end

  it 'returns error message' do
    expect(JSON.parse(response.body)['message']).to eq "Couldn't find Business with 'id'=7"
  end
end
