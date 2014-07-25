class RegistrationController < Devise::RegistrationsController
prepend_before_filter :require_no_authentication, :except => [ :index, :new, :create, :edit, :show, :update ]
	def new
		if blogger_signed_in? && (current_blogger.detail.role.eql?('su')) or (current_blogger.detail.role.eql?('admin'))
			@blogger = Blogger.new
			@detail = Detail.new
		else
			redirect_to root_url , notice: 'You are not authorized to perform this action .'	
		end
	end

	def create
		@blogger = Blogger.new
		@detail = Detail.new
		self.fetch(@blogger, @detail)
		self.save(@blogger, @detail)

	end

	def fetch(blogger,detail)
		@blogger = blogger
		@detail = detail
		@blogger.email = params[:blogger][:email]
		@blogger.password = params[:blogger][:password]
		@blogger.password_confirmation = params[:blogger][:password_confirmation]
		@detail.firstname = params[:detail][:firstname]
		@detail.lastname = params[:detail][:lastname]
		dob = (params[:detail][:dob]).split('/')
		@detail.dob = Date.new(dob[2].to_i, dob[0].to_i, dob[1].to_i)
		@detail.gender = params[:gender]
		@detail.address = params[:detail][:address]
		@detail.role = params[:detail][:role]
		hob = ""
		if !(params[:hobbies] == nil)
			(params[:hobbies]).each do |arr|
				if hob == ""
					hob = arr
				else
					hob = hob+","+arr
				end
			end
		else 
			@detail.hobbies = ""
		end
		@detail.hobbies = hob.to_s
	end

	def save(blogger,detail)
		@blogger = blogger
		@detail = detail
		@blogger.valid?
		@detail.valid?
		if @blogger.errors.blank? and @detail.errors.blank?
			@blogger.save
			@detail.blogger = @blogger		#Critical as initiates the reference between blogger and detail models
			@detail.save
			redirect_to show_blogger_registration_url(@blogger), notice: "A new user named "+@detail.firstname+" "+@detail.lastname+" has been created successfully."
		else
			render :action => 'new'
		end
	end
	
	def show

		@bloggers = Blogger.paginate page: params[:page], order: 'created_at desc',
      per_page: 5
	end

	def edit
		@blogger = Blogger.find(params[:id])
	end
	
	def update
		@blogger =  Blogger.new
		@detail = Detail.new
		self.fetch(@blogger, @detail)
		self.update_blogger(@blogger, @detail)		
	end
	
	def update_blogger(blogger, detail)
		@blogger = (Blogger.where(email: blogger.email))[0]
		@detail = detail
		@detail.id = @blogger.detail.id
		@detail.blogger = blogger
		@detail.valid?


		if !(@detail.blogger.password.eql?("") or @detail.blogger.password == nil) and (@detail.blogger.password.eql?(@detail.blogger.password_confirmation))

			@blogger.password = Blogger.new(:password => @detail.blogger.password).encrypted_password


			if @detail.errors.blank?
				if Detail.update(@detail.id, :firstname => @detail.firstname, :lastname => @detail.lastname, :dob => @detail.dob, :gender => @detail.gender, :address => @detail.address, :role => @detail.role, :hobbies => @detail.hobbies) and @blogger.update_attribute(:encrypted_password, @blogger.password)
					redirect_to show_blogger_registration_url(@blogger), notice: "Blogger details and password updated successfully"
				else
					redirect_to edit_blogger_registration_url(@blogger), notice: "Couldn't update blogger details"				
				end
			else
				redirect_to edit_blogger_registration_url(@blogger), notice: "Couldn't update blogger details"
			end
		elsif @detail.blogger.password.eql?("")
			if @detail.errors.blank?
				if Detail.update(@detail.id, :firstname => @detail.firstname, :lastname => @detail.lastname, :dob => @detail.dob, :gender => @detail.gender, :address => @detail.address, :role => @detail.role, :hobbies => @detail.hobbies)
					redirect_to show_blogger_registration_url(@blogger), notice: "Blogger details updated successfully"
				else
					redirect_to edit_blogger_registration_url(@blogger), notice: "Couldn't update blogger details"
				end
			else
				redirect_to edit_blogger_registration_url(@blogger), notice: "Couldn't update blogger details"
			end

		else
			redirect_to edit_blogger_registration_url(@blogger), notice: 'Password and confirm password should be same!'
		end
	end
end


