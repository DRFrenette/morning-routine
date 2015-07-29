class JournalsController < ApplicationController
  def new
    @user = load_user_from_url
    @journal = Journal.new
  end

  def create
    @user = load_user_from_url
    @journal = @user.journals.new(journal_params)
    if @journal.save
      redirect_to user_journals_path
      flash[:notice] = "Nice! Your journal has been successfully logged. Check out the table to view it!"
    else
      redirect_to user_journals_path
      flash[:notice] = "Whoops! Looks like there was an issue logging your journal. Shoot me an eamil through the contact page to get it sorted out."
    end
  end

  def index
    @user = load_user_from_url
    @journals = @user.journals
  end

  def download
    journal = Journal.find(params[:id])
    send_data journal.body, filename: "#{journal.title}, #{journal.date_written}"
  end

  private

  def load_user_from_url
    User.find(params[:user_id])
  end

  def journal_params
    params.require(:journal).permit(:title, :body).merge(user_id: @user.id)
  end
end
