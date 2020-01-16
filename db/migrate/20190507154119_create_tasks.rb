class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :complete
      t.belongs_to :user, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.timestamps
    end
  end
end
