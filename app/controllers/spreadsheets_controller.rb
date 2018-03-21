class SpreadsheetsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @spreadsheet = Spreadsheet.new
  end

  def create
    @spreadsheet = Spreadsheet.new(spreadsheet_params)
    if @spreadsheet.save
      redirect_to tabs_spreadsheet_path(@spreadsheet)
    else
      render :new
    end
  end

  def update

  end

  def tabs
    @spreadsheet = Spreadsheet.find(params[:id])
  end

  def range

  end

  def js

  end

  private

  def spreadsheet_params
    params.require(:spreadsheet).permit(:name)
  end
end
