class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.integer :mark
      t.boolean :is_active

      t.timestamps
    end
  end
end
