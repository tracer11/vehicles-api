100.times do 

  vin = Faker::Vehicle.vin
  manufacture = Faker::Vehicle.manufacture

  Vehicle.create!(
                  vin:  vin ,
                  manufacture: manufacture)

end