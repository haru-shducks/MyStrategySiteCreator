class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    @site.user_id = current_user.id
    @site.save
    redirect_to sites_path
  end

  def show
    @site = Site.find(params[:id])
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    site = Site.find(params[:id])
    site.update(site_params)
    redirect_to site_path(site.id)
  end

  def destroy
    site = Site.find(params[:id])
    site.destroy
    redirect_to sites_path
  end

  private

  def site_params
    params.require(:site).permit(:name)
  end

end
