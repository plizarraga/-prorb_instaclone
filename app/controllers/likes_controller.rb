class LikesController < ApplicationController
  def create
    # @post = Post.find(params[:post_id])
    # current_user.like!(@post)
    @likeable = find_likeable
    @like = @likeable.likes.build(user: current_user)
    @like.save
  end

  def destroy
    @likeable = find_likeable
    @like = @likeable.likes.find_by(user: current_user)
    puts "like: #{@like.inspect}"

    if @like
      @like.destroy
    end
  end  

  private
  def find_likeable
    likeable_type = params[:likeable_type]
    likeable_id = params[:likeable_id]
    puts "likeable_type: #{likeable_type}"
    puts "likeable_id: #{likeable_id}"
    likeable_type.constantize.find(likeable_id)
  end
end