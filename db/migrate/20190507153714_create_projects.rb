class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :synopsis
      t.integer :owner_id
      t.date :deadline
      t.timestamps
    end
  end
end
