class ManagersController < ApplicationController

	def index
		@man = Manager.all
	end

	def new
		@man = Manager.new
	end

	def show
		@man= Manager.find(params[:id])
	end


	def edit
        @man = Manager.find(params[:id])
	end


	def create
		@man = Manager.new(man_params)
		if @man.save
	         flash[:notice] = "manager was successfully created"
	         redirect_to manager_path(@man)
	     else
	      render 'new'
	     end
	end

	def update
		@man = Manager.find(params[:id])
		if @man.update(man_params)
            flash[:success] = " manager updated"
            redirect_to @man
        else
            render 'edit'
        end
    end
    
    def destroy
        
	end


end

private 

    def  man_params
        params.require(:manager).permit(:name)
    end
