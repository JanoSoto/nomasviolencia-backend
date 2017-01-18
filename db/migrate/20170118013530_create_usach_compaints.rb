class CreateUsachCompaints < ActiveRecord::Migration
  def change
    create_table :usach_compaints do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
