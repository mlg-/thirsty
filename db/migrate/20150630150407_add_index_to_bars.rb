class AddIndexToBars < ActiveRecord::Migration
  def change
    add_index :bars, [:name, :address], unique: true
  end
end
