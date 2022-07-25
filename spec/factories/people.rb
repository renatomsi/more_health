FactoryBot.define do
  factory :person do
    full_name { Faker::Name.name }
    cpf { Faker::Name.name }
  end
end
