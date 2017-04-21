class IncomeformController < ApplicationController
  
  def new
  kihon = params[:kihon]
  kinmu = params[:kinmu]
  total = nil
    if kihon.present? && kinmu.present?
      if  kinmu.to_i<1
        total=kihon.to_i*0.75*2.9*kinmu.to_f
        
      else
        total=kihon.to_i*0.75*2.9
      end
      session[:total] = total
    redirect_to new_item_path
    end
  end
end
