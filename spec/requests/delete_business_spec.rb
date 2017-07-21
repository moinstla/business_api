require 'rails_helper'
describe "delete business route", :type => :request do

  before do
    business = FactoryGirl.create(:business)
    delete "/businesses/#{business.id}"
  end

  it 'destroys business' do
    expect(response).to have_http_status 200
  end
end
