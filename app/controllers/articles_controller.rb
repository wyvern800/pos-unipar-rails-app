class ArticlesController < ApplicationController
    
  def index
    @title = "Listagem de Artigos2222"
    @articles = Article.all
  end

  def show
    begin
      @article = Article.find(params[:id])
    rescue
      redirect_to articles_path
    end
  end

  def edit
    begin
      @article = Article.find(params[:id])
    rescue
      redirect_to articles_path
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @article = Article.new
    @categories = Categories.all
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end


  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end