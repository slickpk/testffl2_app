class CreateLivePlayers < ActiveRecord::Migration
  def change
    create_table :live_players do |t|
      t.integer :Nid
      t.string :Plyr
      t.string :Team

      t.timestamps
    end
  end
end
