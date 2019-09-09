class AddUserIdsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :user_ids, :string, array: true
  end
end
