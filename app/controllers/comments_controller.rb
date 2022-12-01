class CommentsController < ApplicationController
 before_action :find_post

  def create
    comment = @post.comments.create!(params.required(:comment).permit(:content))
  end


  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
