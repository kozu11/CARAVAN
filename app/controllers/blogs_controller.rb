class BlogsController < ApplicationController
 
 def new
   @blog = Blog.new
 end
 
 def create
  blog = Blog.new(blog_params)
  blog.save
  redirect_to blogs_path(blog.id)
 end
 
 def index
  @blogs = Blog.all
 end

 def show
  @blog = Blog.find(params[:id])
 end


private
 def blog_params
   params.require(:blog).permit(:title, :body, :category)
 end
 
end
