
json.array! @selkind do |s|

  json.extract! s, :id, :name, :kind, :months_available, :seasons_available
end
