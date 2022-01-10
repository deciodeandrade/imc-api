class ImcController < ApplicationController
  require './lib/imc_calculator'
  include ImcHelper

  before_action :authorize_request

  def create
    imc = imc_calculate(params[:height].to_f, params[:weight].to_f) 
    @table_imc = classification_and_obesity_calculate(imc)
    @table_imc[:imc] = imc

    render :show
  end

  def show
  end
end
