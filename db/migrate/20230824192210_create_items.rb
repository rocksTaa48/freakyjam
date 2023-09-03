class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :description
      t.decimal :price, scale: 3, precision: 8, null: false
      t.belongs_to :category, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
