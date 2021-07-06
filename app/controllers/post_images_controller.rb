class PostImagesController < ApplicationController

  def create
    @postimage = PostImage.new(postimage_params)
    @postimage.user_id = current_user.id
    if @postimage.save
      redirect_to post_images_path, notice: "投稿完了"
    else
      @postimages = PostImage.all
      render 'index'
    end
  end

  def index
    @postimages = PostImage.all
    @postimage = PostImage.new
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def postimage_params
    params.require(:post_image).permit(:image,:text)
  end


end
