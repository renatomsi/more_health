namespace :dev do 
  desc "Configuração do ambiente de desenvolvimento"
    task setup: :environment do
      if Rails.env.development?
        %x(rails db:drop)
        %x(rails db:create)
        %x(rails db:migrate)
        %x(rails dev:add_peoples)
      end
    end

    desc "Adiciona os munícipes"
    task add_peoples: :environment do
      35.times do |i| 
        Person.create!(
          full_name: Faker::Name.name,
          cpf: "99999999999",
          email: Faker::Internet.email,
          birthdate: Faker::Date.birthday(min_age: 1, max_age: 90),
          phone: Faker::PhoneNumber.cell_phone,
          status: true
        )
      end 
    end
end
