class BlogpostsController < ApplicationController
  def index
    @blogs = Blogpost.all
  end

  def new
    @blog = Blogpost.new
  end

  def create
    @blog = Blogpost.new(blogpost_params)

    if @blog.save
      flash[:success] = "it saved"
      redirect_to :back
    else
      flash[:danger] = "it failed to save"
      redirect_to :back
    end
  end

  def show
    @blog = Blogpost.find(params[:id])
  end

  def edit
    @blog = Blogpost.find(params[:id])
  end

  def update
    @blog = Blogpost.find(params[:id])
    @blog.update_attributes(blogpost_params)

    flash[:success] = "Successfully updated."
    redirect_to blogposts_path
  end

  private

  def blogpost_params
    params.require(:blogpost).permit(:title, :body, :user_id)
  end

end

