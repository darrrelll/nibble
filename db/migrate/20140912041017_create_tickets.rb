class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.string :type
    	t.integer :difficulty
    	t.boolean :complete, default: false
    	t.timestamps
    end
  end
end
