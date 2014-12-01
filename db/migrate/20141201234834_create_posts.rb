class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :code
      t.boolean :published

      t.timestamps
    end
  end
end
