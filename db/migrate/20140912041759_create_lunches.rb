class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.text :name
      t.datetime :proposed_date
      t.text :location
      t.text :google_map
      t.timestamps
    end
  end
end
