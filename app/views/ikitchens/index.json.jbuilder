json.array!(@ikitchens) do |ikitchen|
  json.extract! ikitchen, :id, :house_id, :sink, :cabinet, :stove, :floor
  json.url ikitchen_url(ikitchen, format: :json)
end
