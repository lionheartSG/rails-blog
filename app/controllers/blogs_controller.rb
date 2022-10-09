class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index home show]
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    if @blog.save
      redirect_to blogs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @blog.update(blog_params)
    redirect_to blogs_path, notice: 'Blog was successfully updated.'
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, status: :see_other, notice: 'Blog was successfully deleted.'
  end
end

private

def set_blog
  @blog = Blog.find(params[:id])
end

def blog_params
  params.require(:blog).permit(:title, :rich_content, photos: [])
end
