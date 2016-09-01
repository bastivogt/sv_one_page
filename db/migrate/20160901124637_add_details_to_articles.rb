class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :bg_img_src, :string
    add_column :articles, :bg_img_pos_v, :string
    add_column :articles, :bg_img_publish, :boolean
  end
end
