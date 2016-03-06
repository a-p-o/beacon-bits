module Api
  class BeaconsController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def index
      @beacons = Beacon.all

      render json: @beacons
    end

    def show
      @beacon = Beacon.find(params[:id])

      render json: @beacon
    end

    def new
      @beacon = Beacon.new
    end

    def create
      @beacon = Beacon.new(params.permit(:serial, :details, :channel, :ip, :mac, :sites))

      if @beacon.save
        render json: @beacon
      else
        render json: {
            error: 'Could not create Beacon',
            status: 400
        }, status: 400
      end
    end

    def update
      @beacon = Beacon.find(params[:id])

      if @beacon.update(params.permit(:serial, :details, :gps, :channel, :ip, :mac, :signal_strength,
                                      :visible_networks, :ping, :up, :down, :sites))
        render json: @beacon
      else
        render json: {
            error: 'Could not update Beacon',
            status: 400
        }, status: 400
      end
    end

    def destroy
      @beacon = Beacon.find(params[:id])

      if @beacon.destroy
        render json: {status: 200}, status: 200
      else
        render json: {
            error: 'Could not destroy Beacon',
            status: 400
        }, status: 400
      end
    end
  end
end
