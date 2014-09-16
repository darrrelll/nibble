class CreateUsersLunches < ActiveRecord::Migration
  def change
    create_join_table :lunches, :users 
  end
end
