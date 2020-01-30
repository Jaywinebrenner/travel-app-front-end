class DestinationsController < ApplicationController


  # GET /destinations
  # GET /destinations.json
  def index

    @destinations = HTTParty.get('http://localhost:3000/destinations')
    :index
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    @destination = HTTParty.get('http://localhost:3000/destinations/'+params[:id])
    # binding.pry
    :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.fetch(:country, :city, {})
    end
end
