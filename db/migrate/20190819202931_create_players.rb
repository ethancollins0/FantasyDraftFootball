class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team_name
      t.integer :yards
      t.integer :touchdowns
      t.integer :age
      t.string :position
      t.timestamps
    end
  end
end
