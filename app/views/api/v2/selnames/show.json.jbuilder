
json.array! @selname do |s|

  json.extract! s, :name, :kind, :seasons_available
end
