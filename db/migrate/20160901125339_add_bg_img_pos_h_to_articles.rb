class AddBgImgPosHToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :bg_img_pos_h, :string
  end
end
