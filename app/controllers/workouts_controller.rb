class WorkoutsController < ApplicationController
    def new
      @workouts = Workout.new
    end
    
    
    def create 
      @workouts = Workout.new(workout_params)
      
      if @workouts.save
        flash[:notice] = "Workout was Successfully logged"
        redirect_to workout_path(@workouts)
      else
        render 'new'
      end
    end
    
    def show
      @workout = Workout.find(params[:id])
    end
    private
    
    def workout_params
      params.require(:workouts).permit(:weight, :exercise, :repetition, :time)
    end
end
