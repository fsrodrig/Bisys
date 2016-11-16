json.extract! reserve_history, :id, :initial_date, :final_date, :reserve_state_id, :id_reserve_id, :created_at, :updated_at
json.url reserve_history_url(reserve_history, format: :json)