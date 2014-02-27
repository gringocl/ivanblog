class PostsController < ApplicationController
  before_action :set_cache_control_headers, only: :index
  def index
    @posts = Post.includes({comments: :replies})    # page params[:page]
    @posts = Post.includes({comments: :replies})
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
end
