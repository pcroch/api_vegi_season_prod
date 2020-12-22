# app/views/api/v1/restaurants/index.json.jbuilder
json.array! @products do |product|
  json.extract! product, :id, :name, :kind
end
