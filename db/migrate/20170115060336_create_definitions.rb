class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.string :title
      t.text :content
      t.string :source

      t.timestamps null: false
    end
  end
end
