json.array! @vehicles.each do |vehicle|
  json.id vehicle.id
  json.manufacture vehicle.manufacture
end