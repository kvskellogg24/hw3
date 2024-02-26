class PostsController < ApplicationController
  def new
    @post= Post.new
    @post["place_id"] = params["place_id"]
  end

  #This works
  def create
    @post = Post.new
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]
    
    # assign relationship between Post and Place
    @post["place_id"] = params["post"]["place_id"]
    @post.save
    
    redirect_to "/places/#{@post["place_id"]}" #Not redirecting to the proper places page
  end

  def show
    @post = Post.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @post["place_id"]})
  end
end
