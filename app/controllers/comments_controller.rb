class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to "/tasks/#{comment.task.id}"
    else
      @task = Task.find(comment.task.id)
      @comment = Comment.new
      @comments = @task.comments.includes(:user)
      render "tasks/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, task_id: params[:task_id])
  end
end
