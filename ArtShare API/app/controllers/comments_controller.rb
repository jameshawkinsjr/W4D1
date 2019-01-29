class CommentsController < ApplicationController

  def index
    if comment_params[:user_id]
      render json: Comment.find_by(user_id: comment_params[:user_id])
    elsif comment_params[:artwork_id]
      render json: Comment.find_by(artwork_id: comment_params[:artwork_id])
    end
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: 422x
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end
end