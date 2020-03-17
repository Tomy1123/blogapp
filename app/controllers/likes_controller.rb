class LikesController < ApplicationController
  def likes
    binding.pry
    Like.create(like_params)
    # @spot = Spot.find(params[:id])
    # @spot.like += 1
    # @spot.save
    redirect_to spot_path(@spot.id), notice:"いいねしました！"
  end
  
  private
  
  def post_params
    params.require(:like).permit(:blog_id)
end
