json.extract! account, :id, :username, :password, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)