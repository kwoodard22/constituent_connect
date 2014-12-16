class CallController < ApplicationController
  respond_to :json

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

    respond_with(calls) do |format|
      format.json { render :json => calls.as_json}
    end
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
    params.require(:call).permit(:phone_number, 
                                 category_attributes: [:category], 
                                 sub_category_attributes: [:sub_category])
  end

end
