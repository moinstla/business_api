class Business < ApplicationRecord
  validates :name, presence: true
  validates :business_type, presence: true
  validates :address, presence: true
end
