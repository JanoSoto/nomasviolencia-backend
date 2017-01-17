class CreateNationalComplaints < ActiveRecord::Migration
  def change
    create_table :national_complaints do |t|
      t.string :institution
      t.string :web_page
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
