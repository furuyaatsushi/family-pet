class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def show
    @case = Case.find(params[:id])
  end

  def new
    @case = Case.new
  end

  def create
  end

  def search
  end

  def about
  end

  private
  def casae_params
    params.require(:case).permit(:id)
  end
end
