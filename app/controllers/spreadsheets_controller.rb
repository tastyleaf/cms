class SpreadsheetsController < ApplicationController
  before_action :authenticate_user!

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

    require 'google/apis/sheets_v4'
    service = Google::Apis::SheetsV4::SheetsService.new
    service.key = 'AIzaSyCw1eTY-S9Xuxqv4AZ_bfHDlxEJ3KsLuig'
    service.authorization = nil
    @reponses = service.get_spreadsheet(@spreadsheet.spreadsheet_name)
    @tabs = service.get_spreadsheet(@spreadsheet.spreadsheet_name, fields: "sheets.properties").sheets

  end

  def update
    set_spreadsheet
    if @spreadsheet.update_attributes(spreadsheet_params)
      if @spreadsheet.range_name == nil
        redirect_to range_spreadsheet_path(@spreadsheet)
      else
        redirect_to js_spreadsheet_path(@spreadsheet)
      end 
    end
  end

  def range
    set_spreadsheet

  end

  def js

  end
  private

  def set_spreadsheet
    @spreadsheet = Spreadsheet.find(params[:id])    
  end

  def spreadsheet_params
    params.require(:spreadsheet).permit(:spreadsheet_name, :tab_name, :tab_id, :range_name)
  end


end
