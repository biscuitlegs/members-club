class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
