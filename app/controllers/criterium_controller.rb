class CriteriumController < ApplicationController

  def new
    @alert = Alert.find(params[:alert_id])
    @criteria = Criteria.new
    @rsi = RelativeStrengthIndex.new
  end

  def create
    @alert = Alert.find(params[:alert_id])
    @criteria = Criteria.new(criteria_params)
    @criteria.alert = @alert
    
  end

  def destroy

  end
end
