class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  def new
  	@blog = Blog.new
  end
  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blog_path(@blog.id)
  end
  def update
    @blog.title = params[:blog][:title]
    @blog.body = params[:blog][:body]
    @blog.author = params[:blog][:author]
    redirect_to blog_path(@blog.id)
  end
  private
  	def blog_params #ストロングパラメータ
  		params.require(:blog).permit(:title, :body, :author)
  	end
end
