class AddShowInNavToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :show_in_nav, :boolean
  end
end
