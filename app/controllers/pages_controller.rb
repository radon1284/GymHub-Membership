class PagesController < ApplicationController
  def home
  	@posts = Post.all

  	@attract = Post.where(category_id: 1).order("created_at DESC")
  	@convert = Post.where(category_id: 2).order("created_at DESC")
  	@deliver = Post.where(category_id: 3).order("created_at DESC")
  	@scale = Post.where(category_id: 4).order("created_at DESC")
  end
end
