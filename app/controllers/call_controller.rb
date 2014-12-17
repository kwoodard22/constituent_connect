class CallController < ApplicationController
  respond_to :html, :json

  def new
    @call = Call.new
  end

  def call_dashboard
    @call = Call.new
    @user = current_user
    # @calls = Office.where(id: @user.office_id)[0].calls.limit(10)
  end

  def show
    @call = Call.find(params[:id])
  end

  def index
    calls = Call.all

    respond_to do |format|
      format.html
      format.json { render json: calls.as_json }
    end
  end

  def create
    @call = Call.new(call_params)
    @call.user_id = current_user.id
    @call.save
  end
  
  def update
    respond_to do |format|
      if @call.update(call_params)
        format.html { redirect_to dashboard_path, notice: 'Call was successfully updated.' }
        format.json { render :show, status: :ok, address: @call }
      else
        format.html { render :edit }
        format.json { render json: @call.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def call_params
    params.require(:call).permit(:phone_number, :category, :sub_category, :position)
  end

end
