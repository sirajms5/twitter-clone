json.extract! tweet, :id, :description, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
