class LabelsController < ApplicationController
  def index
      @label = Label.all
  end

  def show
      @label = Label.find(params[:id])
  end

  def destroy
     @label = Label.find(params[:id])

     if @label.destroy
       flash[:notice] = "\"#{@label.name}\" was successfully deleted."
       redirect_to labels_path
     else
       flash[:error] = "There was an error deleting the category."
       render :show
     end
   end

   private

   def authorize_user
     unless current_user.admin?
       flash[:error] = "You must be an admin to do that."
       redirect_to labels_path
     end
   end
end
