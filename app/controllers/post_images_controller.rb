class PostImagesController < ApplicationController

  def new
    @post_Image =PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id =current_user.id
    @post_Image.save
    radirect_to post_image_path
  end

  def index
  end

  def show
  end

private
def post_image_params
  params.require(:post_image).permit(:shop_name, :image, :caption)
end

end
