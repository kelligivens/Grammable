class PicturesController < ApplicationController
   
   def create
    @gram = Gram.find(params[:gram_id])
    @gram.pictures.create(picture_params)
    redirect_to gram_path(@gram)
  end
  
   private

  def picture_params
    params.require(:picture).permit(:caption, :photo)
  end
end
