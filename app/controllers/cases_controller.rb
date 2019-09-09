class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def search
    
  end

end
