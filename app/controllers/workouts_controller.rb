class WorkoutsController < ApplicationController
    def new
      @workouts = Workout.new
    end
end
