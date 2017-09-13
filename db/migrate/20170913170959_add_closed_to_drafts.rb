class AddClosedToDrafts < ActiveRecord::Migration[5.1]
  def change
    add_column :drafts, :closed, :boolean, default: false
  end
end
