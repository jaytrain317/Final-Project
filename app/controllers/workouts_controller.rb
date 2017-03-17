class WorkoutsController < ApplicationController
    def new
      @workouts = Workout.new
    end
    
    
    def create 
      @workouts = Workout.new(workouts_params)
      
      if @workouts.save
        
        flash[:notice] = "Workout was Successfully logged"
        
        redirect_to workouts_path(@workouts)
      else
        render 'new'
      end
    end
    
    def show
      @workout = Workout.find(params[:id])
    end
    
    def index 
      @workouts = Workout.all
    end
    
    private
    
    def workouts_params
      params.require(:workout).permit(:weight, :exercise, :repetition, :time)
    end
end
