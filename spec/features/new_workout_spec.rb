require "rails_helper"
require "spec_helper"

RSpec.feature "New Workout", :type => :feature do
    scenario "User creates new workout log" do
        visit '/workouts/new'
        
        find("How much do you weigh?", visible: false).set '170'
        fill_in "exercise", :with => 'Push-Ups'
        fill_in "repetition", :with => '67'
        fill_in "time", :with => '2'
        
        click_button 'Create Workout'
        expect(page).to have_text 'Workout was Successfully logged'
    end
end
    