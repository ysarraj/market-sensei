class AlertsController < ApplicationController
  def index
    @alerts = Alert.all
    @criteria = Criterium.all
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
    @alert = Alert.find(params[:id])
  end

  def update
    @alert = Alert.find(params[:id])
    if @alert.update(alert_params)
      redirect_to alerts_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @alert = Alert.find(params[:id])
    @Criterium = Criterium.find(params[:Criterium_id])

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
