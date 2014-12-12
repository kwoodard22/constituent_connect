class OfficeController < ApplicationController
  
  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
  end

  def index
  end

  private

  def office_params
    params.require(:office).permit(:name)
  end

end
