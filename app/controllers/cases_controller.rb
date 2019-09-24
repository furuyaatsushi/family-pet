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
    @case = Case.create(cases_params)
    if @case.save
      redirect_to root_path, notice: '投稿が完了しました'
    else
      flash.now[:alert] = '投稿ができませんでした'
      render :new
    end
  end

  def search
    @cases = Case.all
    unless params[:animal].blank? 
      @cases = @cases.where(animal: params[:animal]) 
    end
    unless params[:prefecture] == '47'
      @cases = @cases.where(prefecture_id: params[:prefecture])
    end
    unless params[:keyword].blank?
      @cases = @cases.where(kind: params[:keyword])
    end
    
    if @cases.length == 0
      @message = "一致する募集がありませんでした"
    end
    @page_title = '検索結果'
    render 'index'
  end

  def about
    @page_title = 'このサイトについて'
  end

  private
  def cases_params
    params.require(:case).permit(:image, :animal, :kind, :sex, :age, :prefecture_id, :other, :comment).merge(user_id: current_user.id)
  end
end
