class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:edit, :update, :show, :destroy]
  
    def new
      @workouts = current_user.workouts.new
    end
    
    
    def create 
      @workouts = current_user.workouts.new(workouts_params)
      
      if @workouts.save
        
        flash[:notice] = "Workout was Successfully logged"
        
        redirect_to workouts_path(@workouts)
      else
        render 'new'
      end
    end
    
    def edit
     
    end
    def update
      
      if @workouts.update(workouts_params)
        flash[:notice] = "Workout was Successfully updated"
        redirect_to workouts_path
      else
        render 'edit'
      end
    end
    
    def show
      
    end
    
    def index 
      @workouts = current_user.workouts.all
    end
    
    def destroy 
      
      @workouts.destroy
      flash[:notice] = "Workout was Successfully deleted"
      redirect_to workouts_path
    end
  
    
    private
      def set_workout
        @workouts = current_user.workouts.find(params[:id])
      end
      
      def workouts_params
       params.require(:workout).permit(:weight, :exercise, :repetition, :time)
      end
end
