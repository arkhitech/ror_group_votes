json.array!(@invites) do |invite|
  json.extract! invite, :id, :email, :sender_id, :recipient_id, :token
  json.url invite_url(invite, format: :json)
end
