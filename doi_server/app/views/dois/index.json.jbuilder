json.array!(@dois) do |doi|
  json.extract! doi, :id, :doi, :description
  json.url doi_url(doi, format: :json)
end
