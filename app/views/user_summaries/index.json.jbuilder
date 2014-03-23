json.array!(@user_summaries) do |user_summary|
  json.extract! user_summary, :id, :title, :company_id, :exp
  json.url user_summary_url(user_summary, format: :json)
end
