json.array! @vehicles.each do |vehicle|
  json.id vehicle.id
  json.vin vehicle.vin
  json.manufacture vehicle.manufacture
end