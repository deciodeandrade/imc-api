class ImcController < ApplicationController
  require './lib/imc_calculator'
  include ImcCalculator

  before_action :authorize_request

  def create
    @table_imc = table_imc_calculate(params[:height].to_f, params[:weight].to_f) 
    render :show
  end

  def show
  end
end
