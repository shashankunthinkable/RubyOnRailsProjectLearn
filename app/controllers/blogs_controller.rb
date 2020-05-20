class BlogsController < ApplicationController
  def show
    #render html: params    // As Like, $request->all() in Laravel
    @blogData = Blog.find(params[:id])
    #render  html: @blogData.as_json.to_a   // To Debug Data
  end
end
