json.extract! journal, :id, :journal_name, :journal_link, :read, :created_at, :updated_at
json.url journal_url(journal, format: :json)
