class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.boolean :available, :default => true

      t.timestamps
    end
  end
end
