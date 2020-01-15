class ProjectsController < ApplicationController
	#   protect_from_forgery
	  before_action :authenticate_user!
	  protect_from_forgery
	  load_and_authorize_resource
	# filter_resource_access
	def index
		@proj = current_user.projects
	end

	def new
		
		@proj = Project.new
		# authorize! :create , @proj
		# unauthorized! if cannot? :create, @proj
	end

	def show
		
		@proj = Project.find(params[:id])
		# authorize! :read , @proj
		# unauthorized! if cannot? :read, @proj
	end

	def edit
		
		@proj = Project.find(params[:id])
		# authorize! :update , @proj
		# unauthorized! if cannot? :update, @proj
	end


	def create
		@proj = current_user.projects.new(project_params)
		# @proj.user_project_id.user_id= current_user.id 
		if @proj.save
	         flash[:notice] = "project was successfully created"
	         redirect_to project_path(@proj)
	     else
	      render 'new'
	     end
	end

	def update
		@proj = Project.find(params[:id])
		if @proj.update(project_params)
            flash[:success] = " project updated"
            redirect_to @proj
        else
            render 'edit'
        end
	end

	def destroy
		
		@proj = Project.find(params[:id]).destroy
        flash[:notice] = "recipe was successful deleted"
		redirect_to projects_path
		# authorize! :destroy , @proj
		# unauthorized! if cannot? :destroy, @proj
    
	end

end

	private 

		def project_params
			
		  params.require(:project).permit(:name, :description, user_ids: [] ,user_id: [] )
		  
	    end
	
