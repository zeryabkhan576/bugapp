class UsersController < ApplicationController
   
    before_action :authenticate_user!

    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def new
      @user = User.new
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.new(safe_params)
  
      if @user.save
        redirect_to @user, notice: t('users.controller.create.success')
      else
        render :new
      end
    end
  
    def update
      @user = User.find(params[:id])
  
      if @user.update_attributes(safe_params)
        redirect_to @user, notice: t('users.controller.update.success')
      else
        render :edit
      end
    end
  
    def destroy
      @user = User.find(params[:id])
  
      if current_user != @user
        @user.destroy
      else
        flash[:error] = t('users.controller.destroy.prevent_self_destroy')
      end
        redirect_to users_url
    end
  
end