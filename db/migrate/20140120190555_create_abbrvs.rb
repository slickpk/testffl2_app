class CreateAbbrvs < ActiveRecord::Migration
  def change
    create_table :abbrvs do |t|
      t.string :Abrv
      t.string :Team

      t.timestamps
    end
  end
end
