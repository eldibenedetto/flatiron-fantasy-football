class CreateDrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :drafts do |t|
      t.datetime :draft_time
      t.integer :league_id
      t.timestamps
    end
  end
end
