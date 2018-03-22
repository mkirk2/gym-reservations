class KlassesController < ApplicationController
    
    def index
        @klasses = Klass.all
    end
    def new
        @klass = Klass.new    
    end
    def edit
        @klass = Klass.edit
    end
    def show
        @klass = Klass.find(params[:id])
        @users = User.all
    end
    def create
        @klass = Klass.create(klass_params)
    end
    def destroy
        klass = Klass.find(params[:id])
        klass.destroy!
        redirect_to '/klasses'
    end
    private
    def klass_params
        params.require(:klass).permit(:name, :time, :date, :capacity)
    end
end
    