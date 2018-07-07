class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :info
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
