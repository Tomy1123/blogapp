class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(blog_id: params[:blog_id])
    redirect_back(fallback_location: root_path)
  end

  
  

  def destroy
    @like = Like.find_by(user_id: current_user.id, blog_id: params[:blog_id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
  # def likes
  #   binding.pry
  #   Like.create(like_params)
  #   # @spot = Spot.find(params[:id])
  #   # @spot.like += 1
  #   # @spot.save
  #   redirect_to spot_path(@spot.id), notice:"いいねしました！"
  # end
  
  # private
  
  # def post_params
  #   params.require(:like).permit(:blog_id)
end
