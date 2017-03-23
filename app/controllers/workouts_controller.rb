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
    
    def edit
      @workouts = Workout.find(params[:id])
    end
    def update
      @workouts = Workout.find(params[:id])
      if @workouts.update(workouts_params)
        flash[:notice] = "Workout was succesfully updated"
        redirect_to workouts_path
      else
        render 'edit'
      end
    end
    
    def show
      @workouts = Workout.find(params[:id])
    end
    
    def index 
      @workouts = Workout.all
    end
    
    def destroy 
      @workouts = Workout.find(params[:id])
      @workouts.destroy
      flash[:notice] = "Workout was succesfully deleted"
      redirect_to workouts_path
    end
  
    
    private
    
    def workouts_params
      params.require(:workout).permit(:weight, :exercise, :repetition, :time)
    end
end
