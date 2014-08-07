require 'spec_helper'
#require 'mocha/api'
#require 'mocha/deprecation'
#require 'ruby_debug'
#require 'mocha/standalone'
#require 'mocha/object'
describe BlogsController, :type => :controller do
=begin	 	render_views
	 	fixtures :blogs
	 	it "should redirect to index with a notice on successful save" do 
	 		session[:blogger_id] = blogs(:one).blogger_id 
	 		#get :index
	 		#blogs(:one).authenticate_blogger?.returns(true)	
	 		post 'create'
	 		#flash[:notice].should_not be_nil
	 		response.should redirect_to(blog_path)	
	 	end
	 	it "should re-render new template on failed save" do 
	 		Blog.any_instance.stubs(:valid?).returns(true)	
	 		post 'create'
	 		flash[:notice].should_not be_nil
	 		response.should redirect_to(blog_path)
	 	end
=end
end
