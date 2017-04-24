class IncomeformController < ApplicationController
  
  def new
  ratio = params[:ratio]
  kihon = params[:kihon]
  kinmu = params[:kinmu]
  total = nil
    if kihon.present? && kinmu.present?
      if  kinmu.to_f<0.5
        total=kihon.to_i*0.75*2.9*kinmu.to_f*2*ratio.to_f*0.01
        
      else
        total=kihon.to_i*0.75*2.9*ratio.to_f*0.01
        
      end
      session[:total] = total
    redirect_to new_item_path
    end
  end
end
