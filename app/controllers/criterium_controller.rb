class CriteriumController < ApplicationController

  def new
    @alert = Alert.find(params[:alert_id])
    @criterium = Criterium.new
    # @rsi = RelativeStrengthIndex.new
  end

  def create
    @alert = Alert.find(params[:alert_id])
    @criterium = Criterium.new(criterium_params)
    @criterium.alert = @alert

    # @criterium_find = Criterium.find(params[:id])
    # @rsi = RelativeStrengthIndex.new(relative_strength_index_params)
    # @rsi.criterium = @criterium_find
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
