class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user! 


  def index
    @workouts = Workout.all
  end

 
  def show
  end


  def new
    @workout = Workout.new

    @workout.exercises.build

    @workout.user_id = current_user.id

  end

 
  def edit
  end


  def create
    # @workout = Workout.new(workout_params)

     @workout = current_user.workouts.build(workout_params)

    respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout, notice: 'Workout was successfully created.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { render :edit }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url, notice: 'Workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_workout
      @workout = Workout.find(params[:id])
    end


    def workout_params
      params.require(:workout).permit(:title, :date, exercises_attributes: [:id, :_destroy, :name, :sets, :weight])
    end
end
