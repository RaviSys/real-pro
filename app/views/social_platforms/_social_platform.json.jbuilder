json.extract! social_platform, :id, :name, :url, :company_id, :created_at, :updated_at
json.url social_platform_url(social_platform, format: :json)
