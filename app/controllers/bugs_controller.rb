class BugsController < ApplicationController
	# protect_from_forgery
	# before_action :authenticate_user!
	#  load_and_authorize_resource
	
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
		@bugs.project_id = Project.last.id
		@bugs.user_id = current_user.id
		if @bugs.save
	         flash[:notice] = "Bug successfully reported"
	         redirect_to bug_path(@bugs)
	     else
	      render 'new'
	     end
	end

	def update
		@bugs = Bug.find(params[:id])
		if @bugs.update(bug_params)
            flash[:success] = "Bug status changed "
            redirect_to @bugs
        else
            render 'edit'
        end
    end
    
	def destroy
		@bugs = Bug.find(params[:id]).destroy
        flash[:notice] = "Bug deleted Successfully"
        redirect_to bugs_path
    
	end


end

private 

    def bug_params

        params.require(:bug).permit(:name, :description, :deadline , project_ids: [], bug_status: [] , bug_type: [] )
    end
