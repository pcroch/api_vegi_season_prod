




json.array! @month do |m|

  json.extract! m, :id, :name, :kind, :months_available, :seasons_available
end
