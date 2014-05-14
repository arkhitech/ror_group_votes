json.array!(@logos) do |logo|
  json.extract! logo, :id, :url, :user_group_id
  json.url logo_url(logo, format: :json)
end
