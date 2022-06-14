class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end
  
def create
  @photo = Photo.new
  Photo.create(photo_params)
  if @photo.save
    redirect_to :root
  else render :new
end
end


def destroy
  photo = Photo.find(params[:id])
if    photo.destroy
    redirect_to root_path
  else
    render :index
  end 
end

private
def photo_params
  params.require(:photo).permit(:name,:text,:content,:setnumber_id)
end


end
