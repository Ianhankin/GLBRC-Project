class PreferencesController < ApplicationController
  def edit
  end
  
  def index
    @preferences=Preference.order(:position)
  end
  
  def update
    @preference=Preference.find(params[:id])
    #debugger
    params[:preference]=params
    @preference.update(preference_params)
    render 'edit'
  end
  
  def sort
    params[:preference].each_with_index do |id, index|
      Preference.where(id: id).update_all(position: index+1)
    end
    
    head :ok
  end
  
  private
    def preference_params
      #debugger
      params.require(:preference).permit(:active)
    end
end
