class CommentsController < ApplicationController
  def index
  end

  def new
	@blog = Blog.find(params[:blog_id])
	@comment = Comment.new
  end

  def create
	@blog = Blog.find(params[:blog_id])
	@comment = @blog.comments.create(params[:comment])
	if @comment.save
		@blog.update_attribute("no_of_comments", @blog.no_of_comments.to_i + 1)
		redirect_to blog_url(@blog), notice: 'Your comment was saved successfully.'
	else
		redirect_to blog_url(@blog), notice: "Couldn't save your comment!"
	end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
	@blog = Blog.find(params[:blog_id])
	@comment = @blog.comments.find(params[:id])
	if @comment.destroy and @blog.update_attribute("no_of_comments", @blog.no_of_comments.to_i - 1)
		redirect_to blog_url(@blog), notice: 'Comment was moderated successfully.'
	else
		redirect_to blog_url(@blog), notice: 'Comment was moderated successfully.'
	end
  end
end
