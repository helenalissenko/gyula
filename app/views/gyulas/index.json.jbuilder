json.array!(@gyulas) do |gyula|
  json.extract! gyula, 
  json.url gyula_url(gyula, format: :json)
end
