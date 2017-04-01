class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :mark
      t.text :comment
      t.references :image, index: true, foreign_key: true
      t.references :user

      t.timestamps null: false
    end
  end
end
