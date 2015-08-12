class MeditationsController < ApplicationController
  def index
    @user = load_user_from_url
    @meditations = @user.meditations
  end

  def new
    @user = load_user_from_url
    @meditation = Meditation.new
  end

  def create
    user = load_user_from_url
    @meditation = user.meditations.new(meditation_params)
    if @meditation.save
      redirect_to user_meditations_path
      flash[:notice] = "Good job! Your meditation has been successfully logged."
    else
      redirect_to user_meditations_path
      flash[:notice] = "Whoops! Looks like there was an issue logging your meditation. Shoot me an eamil through the contact page to get it sorted out."
    end
  end

  private

  def load_user_from_url
    User.find(params[:user_id])
  end

  def meditation_params
    params.require(:meditation).permit(:start_time, :end_time, :user_id)
  end
end
