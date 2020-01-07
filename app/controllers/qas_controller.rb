class QaController < ApplicationController

	def index
		@qas = Qa.all
	end

	def new
		@qas =Qa.new
	end

	def show
		@qas= Qa.find(params[:id])
	end


	def edit
        @qas = Qa.find(params[:id])
	end


	def create
		@qas = Qa.new(qa_params)
		if @qas.save
	         flash[:notice] = "Qa was created successfully"
	         redirect_to qa_path(@qas)
	     else
	      render 'new'
	     end
	end

	def update
		@qas = Qa.find(params[:id])
		if @qas.update(qa_params)
            flash[:success] = " project updated"
            redirect_to @qas
        else
            render 'edit'
        end
    end
    
    def destroy
        
	end


end

private 

    def qa_params
        params.require(:qa).permit(:name, :description, :deadline)
    end
