json.array!(@microbloggings) do |microblogging|
  json.extract! microblogging, :id, :name, :email, :contents
  json.url microblogging_url(microblogging, format: :json)
end
