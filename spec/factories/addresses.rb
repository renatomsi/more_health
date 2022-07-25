FactoryBot.define do
  factory :address do
    cep {Faker::Address.postcode}
    public_place {Faker::Address.street_address}
    district {Faker::Address.community}
    city {Faker::Address.city}
    uf {Faker::Address.state}
  end
end
