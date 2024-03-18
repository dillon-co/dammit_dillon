class ImagesController < ApplicationController

    def new
        @variant = Variant.find(params[:variant_id])
        @image = @variant.images.build
    end
    
    def create
        @variant = Variant.find(params[:variant_id])
        @image = @variant.images.build(image_params)
        if @image.save
            redirect_to @variant
        else
            render 'new'
        end
    end
    
    private

    def image_params
        params.require(:image).permit(:image_file)
    end    
end
