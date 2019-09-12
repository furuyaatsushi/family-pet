class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def search
    binding.pry
  end

end
