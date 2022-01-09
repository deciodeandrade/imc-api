class VacasController < ApplicationController
  def create
    @vaca = "xburguer"
    render :show
  end

  def show
    @vaca = "hello"
  end
end
