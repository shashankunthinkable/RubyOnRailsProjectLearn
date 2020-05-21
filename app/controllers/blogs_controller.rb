class BlogsController < ApplicationController
  def show
    #render html: params  Or  plain: params         # As Like, $request->all() in Laravel
    @blogData = Blog.find(params[:id])
    #render  html: @blogData.to_json   # To Debug Data
    end

  def index
    #render plain: params Or  html: params          # As Like, $request->all() in Laravel
    @allBlogs = Blog.all
    # render  html: @allBlogs.to_json  # To Debug Data
  end

  def new

  end

  def edit
    @editBlog = Blog.find(params[:id])
    # render plain: @editBlog.to_json
  end

  def create
    # render plain: params.inspect
    @blogSubmit = Blog.new(allowSubmittedParams)
    @blogSubmit.save
    # redirect_to blog_path(@blogSubmit)    # In 'blog_path' word, 'blog' is prefix of show(), see in routes
    redirect_to blogs_path
  end

  def update
    # render plain: params.to_json
    @update = Blog.find(params[:id])
    @update.update(allowSubmittedParams)
    redirect_to blogs_path    # In 'blogs_path' word, 'blogs' is prefix of index(), see in routes
  end

  def destroy
    @deleteBlog = Blog.find(params[:id])
    @deleteBlog.destroy
    redirect_to blogs_path
  end

  private
    # Only allow a list of trusted parameters through.
    def allowSubmittedParams
      params.require(:blog).permit(:title, :description)
    end
end
