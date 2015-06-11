class WelcomeController < ApplicationController
  def index
  	 @articles = Article.order("created_at DESC")
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
