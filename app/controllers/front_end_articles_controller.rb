class FrontEndArticlesController < ApplicationController
  def index
    @articles = Article.order(:sorting_index);
  end
end
