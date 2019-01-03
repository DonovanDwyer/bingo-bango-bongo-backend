class Api::V1::ValuesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @theme = values_params[:theme]
    if @theme == "all"
      @values = Value.all
      render json: @values, status: :accepted
    else
      @values = Value.all.select { |value| value.theme == @theme }
      render json: @values, status: :accepted
    end
  end


  private
  def values_params
    params.require(:value).permit(:theme)
  end
end
