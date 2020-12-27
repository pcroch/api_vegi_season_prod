# json.extract! @product, :name, :kind


json.array! @product do |p|

  json.extract! p, :name, :kind, :seasons_available
end




