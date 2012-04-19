# encoding: utf-8
class HomeController < ApplicationController
  def index
    @items = Item.find(:all)
    @items = @items.sort_by{rand}
    @item = @items[0]
  end
  
  def answer
    @item = Item.find(params[:id])
    if params[:answer] == @item.answer
      flash[:notice] = "正解！"
    else
      flash[:notice] = "不正解！正解は" + @item.answer.to_s
    end
    redirect_to :action => :index
  end

end
