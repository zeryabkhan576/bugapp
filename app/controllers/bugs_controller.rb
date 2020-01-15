class BugsController < ApplicationController
	
	before_action :authenticate_user!
	protect_from_forgery
	#  authorize_resource
	#  filter_resource_access
	load_and_authorize_resource
	
	def index
		@bugs = current_user.bugs
	end

	def new
		# authorize! :create , @bugs
		@bugs = Bug.new
		# unauthorized! if cannot? :create, @bugs
	end

	def show
		# authorize! :read , @bugs
		@bugs= Bug.find(params[:id])
		# unauthorized! if cannot? :read, @bugs
	end


	def edit
		# authorize! :update , @bugs
		@bugs = Bug.find(params[:id])
		# unauthorized! if cannot? :update, @bugs
	end


	def create
		@bugs = Bug.new(bug_params)
		@bugs.project_id = Project.last.id
		
		@bugs.user_id = params["bug"]["user_id"]["user_id"]
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
		# authorize! :destroy , @bugs
		@bugs = Bug.find(params[:id]).destroy
        flash[:notice] = "Bug deleted Successfully"
        redirect_to bugs_path
		# unauthorized! if cannot? :destroy, @bugs
	end


end

private 

    def bug_params

        params.require(:bug).permit(:name, :description, :deadline , project_ids: [], bug_status: [] , bug_type: [] , user_id: [] )
	
	end
