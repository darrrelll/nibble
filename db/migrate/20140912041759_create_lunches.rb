class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :name
      t.datetime :proposed_date
      t.string :location
      t.string :google_map_link
      t.timestamps
    end
  end
end
