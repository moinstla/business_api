require 'rails_helper'

describe "patch businesses route", type: :request do

  before do
    business = FactoryGirl.create(:business)
    patch "/businesses/#{business.id}", params: {
      :name => "new name",
      :business_type  => "new type",
      :address  => "new address"
    }
  end

  it 'updates business' do
    expect(JSON.parse(response.body)['message']).to eq "This business has been updated."
  end

  it 'should return status 200' do
         expect(response.status).to eq 200
     end

  it do
    expect(Business.first.name).to eq "new name"
  end
end
