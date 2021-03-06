class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.float :progress_percent
      t.integer :level
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
