json.extract! news, :id, :title, :body, :published_on, :image, :created_at, :updated_at
json.url news_url(news, format: :json)
