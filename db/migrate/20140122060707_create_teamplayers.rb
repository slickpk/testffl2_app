class CreateTeamplayers < ActiveRecord::Migration
  def change
    create_table :teamplayers do |t|
      t.string :playerid
      t.string :teamid

      t.timestamps
    end
  end
end
