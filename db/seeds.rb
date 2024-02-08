Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
DoctorSpecialty.destroy_all 
require 'faker'

#on fait une boucle pour chaque model
100.times do |pa|
	Patient.create!(
	  first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    city: City.all.sample
  )
    pa += 1
    puts "100 patients créés avec succès"
end

50.times do |doc|
  Doctor.create!(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    zip_code:Faker::Number.decimal_part(digits: 5), #indique combien on veut de nombre dans le zip_code
    city: City.all.sample
  )
  doc += 1
  puts "50 docteurs créés avec succès"
end

150.times do |ap|
  Appointment.create!(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Time.between_dates(from: Date.today - 1000, to: Date.today + 45, period: :day), city: City.all.sample)
  ap += 1
  puts "150 rendez-vous créés avec succès"
end

40.times do |ci|
  City.create!(name:Faker::Address.city)
  ci += 1
  puts "40 villes créées avec succès"
end

15.times do |x|
  Specialty.create!(name: ["Chirurgien", "Généraliste", "Orthophoniste", "Dentiste", "Ophtalmologue", "Psychiatre", "Kinésithérapeute", "Gynécologue", "Cardiologue", "Pédiatre", "ORL"].sample)
  x += 1
  puts "15 spécialités créées avec succès"
end

15.times do |x|
  DoctorSpecialty.create!(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
  x += 1
  puts "15 spécialités ont été associées à un docteur"
end 