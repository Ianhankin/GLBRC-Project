class PreferencesController < ApplicationController
  def edit
  end
  
  def update
    @preference=Preference.find(params[:id])
    @preference.update_attributes(active: params[:active])
    render 'edit'
  end
end
