json.extract! blog, :id, :title, :content, :images, :tags, :category, :created_at, :updated_at
json.url blog_url(blog, format: :json)
