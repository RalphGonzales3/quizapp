json.extract! quiz, :id, :prompt, :answer, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
