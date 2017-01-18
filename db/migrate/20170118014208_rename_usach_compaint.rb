class RenameUsachCompaint < ActiveRecord::Migration
  def self.up
    rename_table :usach_compaints, :usach_complaints
  end

  def self.down
    rename_table :usach_complaints, :usach_compaints
  end
end
