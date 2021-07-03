class PostImagesController < ApplicationController

  def create
    @postimage = Post_image.new(postimage_params)
    @postimage.user_id = current_user.id
    if @postimage.save
      redirect_to post_images_path, notice: "投稿完了"
    else
      @postimages = Post_image.all
      render 'index'
    end
  end

  def index
    @postimages = Post_image.all
    @postimage = Post_image.new
  end

  def edit
  end

  def show
  end

  def destroy
  end
  
  private
  
  def postimage_params
    params.require(:post_image).permit(:image_id,:text)
  end
  

end
