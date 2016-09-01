class AddHtmlTagToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :html_tag, :string
  end
end
