class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    def new
        @user = User.new    
    end
    def edit
        @user = User.edit
    end
    def show
        @user = User.find(params[:id])
        @klasses = Klass.all
    end
    def create
        @user = User.create(user_params)
    end
    def destroy
        user = User.find(params[:id])
        user.destroy!
        redirect_to '/users'
    end
    private
    def user_params
        params.require(:user).permit(:name)
    end
end
    