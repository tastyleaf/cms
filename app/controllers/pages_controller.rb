class PagesController < ApplicationController

  def index

    require 'google/apis/sheets_v4'
    service = Google::Apis::SheetsV4::SheetsService.new
    service.key = 'AIzaSyCw1eTY-S9Xuxqv4AZ_bfHDlxEJ3KsLuig'
    service.authorization = nil
    response1 = service.get_spreadsheet_values("1m4xuNtoujwTySp3sXS2iZ0gsSk8m9d86S_NtReXHi7o", "nav-top!A2:A9")
    @data1 = response1.values
    response2 = service.get_spreadsheet_values("1m4xuNtoujwTySp3sXS2iZ0gsSk8m9d86S_NtReXHi7o", "promotion!A2:C2")
    @data2 = response2.values
    response3 = service.get_spreadsheet_values("1m4xuNtoujwTySp3sXS2iZ0gsSk8m9d86S_NtReXHi7o", "nav-middle!A2:A5")
    @data3 = response3.values
    response4 = service.get_spreadsheet_values("1m4xuNtoujwTySp3sXS2iZ0gsSk8m9d86S_NtReXHi7o", "item!B2:D9")
    @data4 = response4.values
    response5 = service.get_spreadsheet_values("1m4xuNtoujwTySp3sXS2iZ0gsSk8m9d86S_NtReXHi7o", "nav-bottom!B1:G8" )
    @data5 = response5.values

  end



end
