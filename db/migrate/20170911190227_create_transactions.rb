class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :player_id
      t.integer :team_id
      t.string :type_of_transaction, :default => "drafted"
      t.timestamps
    end
  end
end
