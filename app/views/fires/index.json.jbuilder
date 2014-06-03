json.array!(@fires) do |fire|
  json.extract! fire, :id, :name, :incident, :description, :owner, :status, :root_cause_analysis
  json.url fire_url(fire, format: :json)
end
