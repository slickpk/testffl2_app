class CreateFteams < ActiveRecord::Migration
  def change
    create_table :fteams do |t|
      t.string :Team
      t.string :TeamUrl

      t.timestamps
    end
  end
end
