json.extract! course_select, :id, :num, :name, :score, :tutor, :created_at, :updated_at
json.url course_select_url(course_select, format: :json)
