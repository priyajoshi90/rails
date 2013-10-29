class DiscussionsController < ApplicationController
before_filter :authenticate_blogger!, :except => [:index, :show]
	def new
		@discussion = Discussion.new
	end
	
	def create

		@blogger = current_blogger
		@discussion = Discussion.new(params[:discussion])
		@discussion.blogger = @blogger
		if @discussion.save
			redirect_to @discussion, notice: 'Discussion was successfully created.'
		else
			render 'new', notice: 'could not save the discussion, please try again later!'
		end
	end
	
	def show
        	@discussion = Discussion.find(params[:id])
		@response = Response.new
	end
	
	def index
		if blogger_signed_in? && current_blogger.detail.role.eql?('normal')
			@discussions = current_blogger.discussions
		else
			@discussions = Discussion.all
		end
	end
	
	def edit
		@discussion = Discussion.find(params[:id])
  	end

 	def update
		@discussion = Discussion.find(params[:id])
		if @discussion.update_attributes(params[:discussion])
			redirect_to @discussion, notice: 'Discussion was updated successfully.'
		else
			render 'edit', notice: 'Update failed!'
		end
	end

 	 def destroy
		@discussion = Discussion.find(params[:id])
		if @discussion.destroy
			redirect_to discussions_url, notice: 'Discussion was deleted successfully.'
		else
			render 'index', notice: 'Discussion deletion failed!'
		end
  	 end
end
