class DayReportsController < ApplicationController

before_action :set_dau_report, only: [:show, :edit, :update, :destroy]


  def index
    @day_reports = DayReport.all
    render json: @day_reports
  end

  def show
        render json: @day_report
  end


  def edit
  end

  def create
    @day_report = DayReport.new(day_report_params)
    @day_report.save
    render json:@day_report
  end

  def update
    @day_report.update(day_report_params)
    render json: @day_report
  end

  def destroy
    @day_report.destroy
    render json: @day_report
  end

  private
    def set_day_report
      @day_report = DayReport.find(params[:id])
    end

    def day_report_params
      params.require(:day_report).permit(:user_id, :day_report_id, :date)
    end
end
