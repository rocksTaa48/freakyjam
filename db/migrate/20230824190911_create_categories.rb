class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false, default: ""
      t.string :body

      t.timestamps
    end
  end
end
