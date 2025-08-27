class AlertsController < ApplicationController
  def index
    @alert = Alert.all
    @signal = Signal.all
  end

  def show
    @alert = Alert.find(params[:id])
  end

  def create
    @alert = Alert.new(alert_params)
  end

  def update

  end

  def destroy

  end

  private

  def alert_params
    params.require(:alert).permit(:name, :description)
  end
end
