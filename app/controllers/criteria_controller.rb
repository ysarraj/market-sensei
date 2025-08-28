class CriteriaController < ApplicationController

  def new
    @alert = Alert.find(params[:alert_id])
    @criterium = Criterium.new
    # @rsi = RelativeStrengthIndex.new
  end

  def create
    @alert = Alert.find(params[:alert_id])
    @criterium = Criterium.new(criterium_params)
    # TODO: make the value of @criterium.indicatable_type variable dynamic (maybe from the frontend somehow).
    @criterium.indicatable_type = "RelativeStrengthIndex"

    if @criterium.save!
      @criteria_alert = CriteriaAlert.create(alert: @alert, criterium: @criterium)
      redirect_to alert_path(@alert)
    else
      render "alerts/show", status: :unprocessable_content
    end
  end

   def update
    @criterium = Criterium.find(params[:id])
    if @criterium.update(criterium_params)
      redirect_to alerts_path
    else
      render "alert/edit", status: :unprocessable_entity
    end
  end

  def destroy
    @criterium = criterium.find(params[:id])
    @alert = Alert.find(params[:alert_id])

    if @bookmark.destroy
      redirect_to alerts_path
    else
      render "alert/show", status: :unprocessable_content
    end
  end

  private

  def criterium_params
    params.require(:criterium).permit(:operand, :value, :indicatable_id)
  end

  # def relative_strength_index_params
  #   params.require(:relative_strength_index).permit(:interval, :time_period)
  # end
end
