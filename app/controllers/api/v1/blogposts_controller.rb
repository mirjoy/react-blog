class Api::V1::BlogpostsController < Api::V1::BaseController
  def index
    respond_with Blogpost.all
  end

  def create
    respond_with :api, :v1, Blogpost.create(blogpost_params)
  end

  def destroy
    respond_with Blogpost.destroy(params[:id])
  end

  def update
    respond_with Blogpost.update(params[:id], blogpost_params)
  end

 private

  def blogpost_params
    params.require(:blogpost).permit(:title)
  end
end
