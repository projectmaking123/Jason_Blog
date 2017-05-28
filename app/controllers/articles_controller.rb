class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "Jason", password: "jason",
  except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find_by(id: params[:id])

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to '/articles'
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
