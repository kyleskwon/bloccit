class LabelsController < ApplicationController
  def index
      @label = Label.all
  end
    
  def show
      @label = Label.find(params[:id])
  end
end