class UserController < ApplicationController
  
  def user_dashboard
    @call = Call.new
    @user = current_user
    @calls = Office.where(id: @user.office_id)[0].calls.limit(10)
  end

  def create
    @call = Call.new(call_params)
    @call.user_id = current_user.id

    respond_to do |format|
      if @call.save
        format.html { redirect_to dashboard_path, notice: 'Call was successfully created.' }
        format.json { render :show, status: :created, address: @call }
      else
        format.html { render :new }
        format.json { render json: @call.errors, status: :unprocessable_entity }
      end
    end
  end

  private 
  
  def call_params
    params.require(:call).permit(phone_number_attributes: [ :phone_number])
  end

end
