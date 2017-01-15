class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :section
      t.text :content

      t.timestamps null: false
    end
  end
end
