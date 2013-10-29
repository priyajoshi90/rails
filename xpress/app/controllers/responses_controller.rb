class ResponsesController < ApplicationController
 def index
  end

  def new
	@discussion = Discussion.find(params[:discussion_id])
	@response = Response.new
  end

  def create
	@discussion = Discussion.find(params[:discussion_id])
	@response = @discussion.responses.create(params[:response])
	if @response.save
		redirect_to discussion_url(@discussion), notice: 'Your response was saved successfully.'
	else
		redirect_to discussion_url(@discussion), notice: "Couldn't save your response!"
	end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
	@discussion = Discussion.find(params[:discussion_id])
	@response = @discussion.responses.find(params[:id])
	if @response.destroy 
		redirect_to discussion_url(@discussion), notice: 'Response was moderated successfully.'
	else
		redirect_to discussion_url(@discussion), notice: 'Response was moderated successfully.'
	end
  end
end
