class ProjectsController < ApplicationController

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
		@proj = Project.new(project_params)
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
	end


end

	private 

	    def project_params
	      params.require(:project).permit(:name, :description )
	    end
	
