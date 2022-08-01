class OrderableController < ApplicationController



  def index
    @service_histories=ServiceHistory.all
  end
end
