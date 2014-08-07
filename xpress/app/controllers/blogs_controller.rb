class BlogsController < ApplicationController

before_filter :authenticate_blogger!, :except => [:index, :show]

  def index
  	@search = Blog.search do
  		fulltext params[:search]
  	end
	if blogger_signed_in? && current_blogger.detail.role.eql?('normal')
		@search = Blog.where(:blogger_id => current_blogger.id).search do
			fulltext params[:search]
		end
		@blogs = @search.results
	elsif blogger_signed_in? and current_blogger.detail.role.eql?("admin")
		@blogs = @search.results
	else
		@blogs = @search.results
	end
  end

  def new
	@blog = Blog.new
  end

  def create
	@blogger = current_blogger
	@blog = Blog.new(params[:blog])
	@blog.blogger = @blogger
	@blog.no_of_comments = 0.to_i
	if @blog.save
		redirect_to @blog, notice: 'Blog was successfully created.'
	else
		render 'new', notice: 'could not save the blog, please try again later!'
	end
  end

  def show
	@blog = Blog.find(params[:id])
	@comment = Comment.new
  end

  def edit
	@blog = Blog.find(params[:id])
  end

  def update
	@blog = Blog.find(params[:id])
	if @blog.update_attributes(params[:blog])
		redirect_to @blog, notice: 'Blog was updated successfully.'
	else
		render 'edit', notice: 'Update failed!'
	end
  end

  def destroy
	@blog = Blog.find(params[:id])
	if @blog.destroy
		redirect_to blogs_url, notice: 'Blog was deleted successfully.'
	else
		render 'index', notice: 'Blog deletion failed!'
	end
  end
end
