class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :oath_token
    	t.string :gh_username
    	t.timestamps
    end
  end
end
