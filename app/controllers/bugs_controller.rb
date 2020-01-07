class BugsController < ApplicationController

	def index
		@bugs = Bug.all
	end

	def new
		@bugs = Bug.new
	end

	def show
		@bugs= Bug.find(params[:id])
	end


	def edit
        @bugs = Bug.find(params[:id])
	end


	def create
		@bugs = Bug.new(bug_params)
		if @bugs.save
	         flash[:notice] = "project was successfully created"
	         redirect_to bug_path(@bugs)
	     else
	      render 'new'
	     end
	end

	def update
		@bugs = Bug.find(params[:id])
		if @bugs.update(bug_params)
            flash[:success] = " project updated"
            redirect_to @bugs
        else
            render 'edit'
        end
    end
    
    def destroy
        
	end


end

private 

    def bug_params
        params.require(:bug).permit(:name, :description, :deadline)
    end
