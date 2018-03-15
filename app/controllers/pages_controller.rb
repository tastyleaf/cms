class PagesController < ApplicationController

  def index

    require 'google/apis/sheets_v4'
    service = Google::Apis::SheetsV4::SheetsService.new
    service.key = 'AIzaSyCw1eTY-S9Xuxqv4AZ_bfHDlxEJ3KsLuig'
    service.authorization = nil
    @response = service.get_spreadsheet_values("1u9ZBeEGHyGzORQAURnqvuWt03karagDSlc87geaTjMs", "abc!A2:A3")
 
  end



end
