class AddHtmlTagNameToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :html_tag_name, :string
  end
end
