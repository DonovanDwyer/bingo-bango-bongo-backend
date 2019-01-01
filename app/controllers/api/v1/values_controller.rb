class Api::V1::ValuesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @theme = values_params[:theme]
    @values = Value.all.select { |value| value.theme == @theme }
    render json: @values, status: :accepted
  end


  private
  def values_params
    params.require(:value).permit(:theme)
  end
end
