class ReportController < ApplicationController

  def show
    @calls = Call.all
  end
  
end
