json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :cached_satisfaction_list, :cached_trigger_list, :body, :template
  json.url questionnaire_url(questionnaire, format: :json)
end
