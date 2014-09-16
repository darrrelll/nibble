class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true
      t.string :name
      t.text :description
      t.text :url
      t.string :difficulty_rating

      t.timestamps
    end
  end
end
