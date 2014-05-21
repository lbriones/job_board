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

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end
end
