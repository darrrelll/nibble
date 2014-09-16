class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :section_number
    	t.string :name
    	t.timestamps
    end
  end
end
