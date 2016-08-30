class FrontEndArticlesController < ApplicationController
  def index
    @articles = Article.order(:sorting_index);
    @nav_items_left = Article.where(menu_position: "left").order(:sorting_index)
    @nav_items_right = Article.where(menu_position: "right").order(:sorting_index)
  end
end
