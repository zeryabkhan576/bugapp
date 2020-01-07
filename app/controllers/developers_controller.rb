class DevelopersController < ApplicationController

	def index
		@dev = Developer.all
	end

	def new
		@dev = Developer.new
	end

	def show
		@dev= Developer.find(params[:id])
	end


	def edit
        @dev = Developer.find(params[:id])
	end


	def create
		@dev = Developer.new(dev_params)
		if @dev.save
	         flash[:notice] = "Developer is created successfully"
	         redirect_to bug_path(@dev)
	     else
	      render 'new'
	     end
	end

	def update
		@dev = Developer.find(params[:id])
		if @dev.update(dev_params)
            flash[:success] = "peoject"
            redirect_to @dev
        else
            render 'edit'
        end
    end
    
    def destroy
        
	end


end

private 

    def dev_params
        params.require(:bug).permit(:name, :description, :deadline)
    end
