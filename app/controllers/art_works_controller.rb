class ArtWorksController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @current_user = current_user
        @user_is_admin = @current_user && @current_user&.admin?
        @art_works = ArtWork.all
    end

    def show
        @art_work = ArtWork.find(params[:id])
    end

    def new
        @art_work = ArtWork.new
    end

    def add_variants
        @art_work = ArtWork.find(params[:id])
        @variant = @art_work.variants.build
    end
    
    def create_variants
        @art_work = ArtWork.find(params[:id])
        @variant = @art_work.variants.build(variant_params)
        if @variant.save
            redirect_to @art_work
        else
            render 'add_variants'
        end
    end    

    def create
        @art_work = ArtWork.new(art_work_params)
        @art_work.user = current_user
        if @art_work.save
            redirect_to @art_work
        else
            render 'new'
        end
    end

    private

    def art_work_params
        params.require(:art_work).permit(:title, :description, :contract_address, :medium_type, :main_image, variant: [:size, :width, :height, :price_in_eth, :price_in_usd])
    end
end
