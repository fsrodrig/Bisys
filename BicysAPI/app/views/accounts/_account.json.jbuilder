json.extract! account, :id, :user, :password, :created_at, :updated_at
json.url account_url(account, format: :json)