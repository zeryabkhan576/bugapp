class ProjectsController < ApplicationController
	#   protect_from_forgery
	#   before_action :authenticate_user!
	#  load_and_authorize_resource
	def index
		@proj = Project.all
	end

	def new
		@proj = Project.new
	end

	def show
		@proj = Project.find(params[:id])
	end

	def edit
		@proj = Project.find(params[:id])
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
    
	end


end

	private 

	    def project_params
	      params.require(:project).permit(:name, :description, user_ids: [] ,user_id: [] )
	    end
	
