class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
    @var1="hello2222"
    
  end
end
