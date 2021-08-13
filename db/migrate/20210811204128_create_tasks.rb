class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed

      t.timestamps
    end
  end

  def change
    add_column :tasks, :tittle, :completed
  end

end
