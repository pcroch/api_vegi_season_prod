




json.array! @month do |m|

  json.extract! m, :name, :kind, :seasons_available
end
