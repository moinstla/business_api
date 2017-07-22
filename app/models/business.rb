class Business < ApplicationRecord
  validates :name, presence: true
  validates :business_type, presence: true
  validates :address, presence: true

  scope :name_search, -> (input) { where("name like ?", "%#{input}") }
  scope :random, -> { Business.order("RANDOM()").first }
end
