class PostsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @post = @company.posts.new
  end

  def create
    @company = Company.find(params[:company_id])
    @post = @company.posts.create(post_params)

    redirect_to company_posts_path
  end

  def index
    @company = Company.find(params[:company_id])
    @posts = @company.posts
  end

  def edit
    @company = Company.find(params[:company_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to company_posts_path
    else
      render 'edit'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end
end
