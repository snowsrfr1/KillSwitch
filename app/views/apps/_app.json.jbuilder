json.extract! app, :id, :belongs_to, :bundlename, :appstate_id, :message, :created_at, :updated_at
json.url app_url(app, format: :json)