class ServicesController < ApplicationController
  def index
    @services = doc.css('table#seedcos tbody tr').first
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
