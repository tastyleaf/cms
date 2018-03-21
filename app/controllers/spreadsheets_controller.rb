class SpreadsheetsController < ApplicationController
  def new
    @spreadsheet = Spreadsheet.new
  end


  def create
    @spreadsheet = Spreadsheet.new(spreadsheet_params)
    @spreadsheet.spreadsheet_name =  @spreadsheet.spreadsheet_name.split('/')[5]
    if @spreadsheet.save
      redirect_to tabs_spreadsheet_path(@spreadsheet)
    else
      #add restriction for unvailid url 
      render :new
    end
  end

  def tabs
    set_spreadsheet
  end





  private

  def set_spreadsheet
    @spreadsheet = Spreadsheet.find(params[:id])    
  end


  def spreadsheet_params
    params.require(:spreadsheet).permit(:spreadsheet_name, :tabs_name, :range_name)
  end




end
