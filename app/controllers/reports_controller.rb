class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end
  
  def new
    @report = Report.new
  end
  
  def create
    @report = Report.new(reports_params)
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
    
  end
  
  private
  def reports_params
    params.require(:report).permit(:username, :teacher, :place, :body, :target, :date)
  end
end
