class ServicesController < ApplicationController
  def index
    @services = Service.order('funded_at DESC').all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
