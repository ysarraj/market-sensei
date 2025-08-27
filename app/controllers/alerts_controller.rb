class AlertsController < ApplicationController
  def index
    @alert = Alert.all
    @signal = Signal.all
  end

  def show
    @alert = Alert.find(params[:id])
  end

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)
    if @alert.save
      redirect_to alerts_path
    else
      render "new", status: :unprocessable_content
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @alert = Alert.find(params[:id])
    @criteria = Criterium.find(params[:criteria_id])

    if @alert.destroy
      redirect_to alerts_path
    else
      render "alerts", status: :unprocessable_content
    end
  end

  private

  def alert_params
    params.require(:alert).permit(:name, :description)
  end
end
