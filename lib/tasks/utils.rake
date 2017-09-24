namespace :utils do
  desc "POPULAR O BANCO DE DADOS"
  task seed: :environment do
          puts "Gerando Contacts ..."
          10.times do |i|
            Contact.create!(
                          name: Faker::Name.name,
                          email: Faker::Internet.email,
                          kind: Kind.all.sample,
                          rmk: LeroleroGenerator.sentence([1,2,3,4,5].sample)
                          )
          end
            puts "Gerando Contacts ...  [OK]"

            puts "Gerando Endereços ..."
            Contact.all.each do |contact|
              Address.create!(
                            street: Faker::Address.street_name,
                            city: Faker::Address.city,
                            state: Faker::Address.state,
                            contact: contact  )
            end
              puts "Gerando Endereços...  [OK]"

              puts "Gerando telefones..."
              Contact.all.each do |contact|
                Random.rand(1..5).times do |i|
                  Phone.create!(
                              phone: Faker::PhoneNumber.phone_number,
                              contact: contact
                              )
              end
            end
              puts "Gerando Telefones ... [OK]"
  end
end
