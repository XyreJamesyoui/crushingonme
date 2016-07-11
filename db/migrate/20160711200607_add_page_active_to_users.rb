class AddPageActiveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :page_active, :boolean
  end
end
