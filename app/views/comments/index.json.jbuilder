json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :quote_id
  json.url comment_url(comment, format: :json)
end
