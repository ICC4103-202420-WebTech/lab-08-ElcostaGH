class TrainingSessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_training_session, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @training_sessions = current_user.training_sessions.order(date: :desc)
  end

  def new
    @training_session = current_user.training_sessions.build
  end

  def create
    @training_session = current_user.training_sessions.build(training_session_params)
    if @training_session.save
      redirect_to training_sessions_path, notice: 'Training session was successfully created.'
    else
      render :new, alert: 'Error creating training session.'
    end
  end

  def edit
  
  end

  def show
    @training_session = current_user.training_sessions.find(params[:id])
  end

  def update
    if @training_session.update(training_session_params)
      redirect_to training_sessions_path, notice: 'Training session was successfully updated.'
    else
      render :edit, alert: 'Error updating training session.'
    end
  end

  def destroy
    @training_session = current_user.training_sessions.find(params[:id])
    @training_session.destroy
    redirect_to training_sessions_path, notice: 'Training session was successfully deleted.'
  end

  private

  def set_training_session
    @training_session = current_user.training_sessions.find(params[:id])
  end

  def authorize_user!
    redirect_to training_sessions_path, alert: "Not authorized!" unless @training_session.user == current_user
  end

  def training_session_params
    params.require(:training_session).permit(:date, :activity, :duration, :description)
  end
end
