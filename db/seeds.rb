require 'faker'
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

10.times do

    

    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

    dog = Dog.create!(name: Faker::Artist.name, age: rand(1..20), race: Faker::Hipster.word)

    stroll = Stroll.create!(date: Faker::Date.between(from: '2020-09-23', to: '2021-09-25'), dogsitter: dogsitter, dog: dog)

    city = City.create!(city_name: Faker::Address.city, dogsitter: dogsitter, dog: dog)
end
    


#
   # 20.times do
    #    d = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
      
     #   patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
      
      #  appointment = Appointment.create!(doctor: d, patient: patient, date: Faker::Date.between(from: '2020-09-23', to: '2021-09-25')) 
      
       # city = City.create!(city_name: Faker::Address.city)
      
        #spe = Specialty.create(specialty_name: spec[rand(spec.length)])
      
        #join = JointureSpe.create(doctor: d,specialty: spe)
      #end
      