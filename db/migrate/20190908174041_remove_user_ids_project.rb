class RemoveUserIdsProject < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :user_ids, :string, array: true
  end
end
