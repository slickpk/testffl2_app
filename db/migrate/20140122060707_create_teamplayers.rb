class CreateTeamplayers < ActiveRecord::Migration
  def change

    if !table_exists?(:live_players)
    	create_table :live_players do |t|
      		t.integer :Nid
      		t.string :Plyr
      		t.string :Team
      		t.timestamps
    end
  end

    if !table_exists?(:fteams)
    	create_table :fteams do |t|
      		t.string :Team
      		t.string :TeamUrl
      		t.timestamps
    	end
    end

    create_table :teamplayers do |t|
      t.string :playerid
      t.string :teamid
      t.string :live_player_id
      t.string :fteam_id

      t.timestamps
    end

   

    #create_table :teamplayers do |t|
     # t.belongs_to :player
      #t.belongs_to :team
      #t.timestamps
    #end


  end
end
