json.extract! national_complaint, :id, :institution, :web_page, :phone_number, :created_at, :updated_at
json.url national_complaint_url(national_complaint, format: :json)