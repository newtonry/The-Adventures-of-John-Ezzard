class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :author_ip
      t.string :title, null: false
      t.text :body, null: false
      
      t.timestamps
    end
    add_index :stories, :title
  end
end
