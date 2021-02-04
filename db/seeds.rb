# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all



37.times do
  city = City.create(cities: Faker::Address.city)
end


5.times do
  Doctor.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name  ,
    city_id: City.all.sample.id ,
    specialty: ["charcudoc", "ophtalmologue", "proctologue", "medecin generaliste"].sample ,
    zip_code: Faker::Number.number(digits: 5)
  )
end



37.times do
  Patient.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name ,
    city_id: City.all.sample.id 
  )
end



37.times do 
  Appointment.create(
    doctor_id: Doctor.all.sample.id ,
    patient_id: Patient.all.sample.id ,
    city_id: City.all.sample.id ,
    date: Faker::Time.forward(days: 37,  period: :day)
  )
end



puts "tas tous cree OK"