class CreateUsersProjectsJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :users, :projects
  end
end
