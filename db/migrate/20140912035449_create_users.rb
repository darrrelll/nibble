class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name 
    	t.string :gravatar_image_string
    	t.integer :group_id
    	t.timestamps
    end
  end
end
