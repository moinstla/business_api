class Seed


  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    500.times do |i|
        shop = Business.create!(name: Faker::Company.name, business_type: Faker::Commerce.department, address: Faker::Address.street_address)
    end
  end
end

Seed.begin
