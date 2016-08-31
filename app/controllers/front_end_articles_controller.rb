class FrontEndArticlesController < ApplicationController
  def index
    # @articles = Article.order(:sorting_index);
    @articles_all = Article.order(:sorting_index);

    @articles_to_show = @articles_all.where({published: true})

    @nav_items_left = @articles_all.where({published: true, show_in_nav: true, menu_position: "left"})
    @nav_items_right = @articles_all.where({published: true, show_in_nav: true, menu_position: "right"})




    # @nav_items_left = Article.where(menu_position: "left").order(:sorting_index)
    # @nav_items_right = Article.where(menu_position: "right").order(:sorting_index)
  end
end
