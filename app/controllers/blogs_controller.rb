class BlogsController < ApplicationController
  def top
  end

  def index
  	@blogs = Blog.all
  	@blog = Blog.new
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blog_path(blog), notice: '投稿しました'
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path, notice: "更新しました"
  end

  def destroy
  	@blog = Blog.find(params[:id])
  	@blog.destroy
  	redirect_to blogs_path, notice: "削除しました"
  end

  private
  	def blog_params
  		params.require(:blog).permit(:title, :body)
  	end

end
