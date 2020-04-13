class PostsController < ApplicationController
   
  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.account_id = current_account.id if account_signed_in?

    if @post.save
      flash[:success] = "Post was created successfully."
      redirect_to dashboard_path
    else
      flash.now[:danger] = "Post was not saved" 
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit :image
    end
end
