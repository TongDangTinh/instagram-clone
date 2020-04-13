class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: :profile
  
  def index
    # User dashboard -post feed
    @posts = Post.all
  end

  def profile
    # User profile
    @posts = @account.posts.all
  end

  private
    def set_account
      @account = Account.find_by_username params[:username]
    end
end
