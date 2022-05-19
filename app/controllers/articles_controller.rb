class ArticlesController < ApplicationController
  layout "special_layout"
  def index
   
    @articles = Article.all
    @var1="hello2222"
  end
end
