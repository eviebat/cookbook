class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :ingredients, array: true, default: []
      t.string :steps, array: true, default: []
      t.integer :views, default: 0
      t.integer :mealtype
      t.timestamps
    end
  end
end
