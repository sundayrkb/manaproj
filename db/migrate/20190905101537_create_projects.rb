class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|

      t.string :title
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
