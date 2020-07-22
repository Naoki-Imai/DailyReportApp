class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end
  
  def new
    @report = Report.new
  end
  
  def create
    @report = Report.new(reports_params)
    @report.user_id = current_user.id
    @report.username = current_user.username
    if @report.save
      redirect_to ("/")
    else
      render ("reports/new")
    end
  end
  
  def show
    @report = Report.find_by(id: params[:id])
  end
  
  def edit
    @report = Report.find_by(id: params[:id])
  end
  
  def update
    @report = Report.find_by(id: params[:id])
    @report.update(reports_params)
    if @report.save
      redirect_to ("/")
    else
      render ("reports/edit")
    end
      
  end
  
  def destroy
    @report = Report.find_by(id: params[:id])
    @report.destroy
    redirect_to ("/")
  end
  
  private
  def reports_params
    params.require(:report).permit(:username, :teacher, :place, :body, :target, :date)
  end

end
