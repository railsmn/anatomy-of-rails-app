class AddEnabledToUsers < ActiveRecord::Migration
  def change
    add_column :users, :enabled, :boolean
  end
end
