class CreateForcedReports < ActiveRecord::Migration
  def change
    create_table :forced_reports do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
