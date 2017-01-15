class AddQuoteToHeader < ActiveRecord::Migration
  def change
  	add_column :headers, :quote, :text
  end
end
