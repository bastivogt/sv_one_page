class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :sorting_index
      t.string :menu_position
      t.string :nav_id
      t.string :modal_id
      t.string :css_class
      t.text :inline_style
      t.string :padding_top
      t.string :padding_bottom

      t.timestamps null: false
    end
  end
end
