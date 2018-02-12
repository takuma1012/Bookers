class BlogsController < ApplicationController
  def top
  end

  def index
  	@blogs = Blog.all
  	@blog = Blog.new
  end

  def detail
  	@blog = Blog.find(params[:id])
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def destroy
  	@blog = Blog.find(params[:id])
  	@blog.destroy
  	redirect_to blogs_path
  end

  private
  	def blog_params
  		params.require(:blog).permit(:title, :body)
  	end

end