class BeaconsController < ApplicationController

  def index
    @beacons = Beacon.all
  end

  def show
    @beacon = Beacon.find(params[:id])
  end

  def new
    @beacon = Beacon.new
  end

  def create
    @beacon = Beacon.new(params.require(:beacon).permit(:serial, :details, :mac, :ip))

    if @beacon.save
      redirect_to @beacon
    else
      render 'new'
    end
  end

  def edit
    @beacon = Beacon.find(params[:id])
  end

  def update
    @beacon = Beacon.find(params[:id])

    if @beacon.update(params[:beacon])
      redirect_to @beacon
    else
      render 'edit'
    end
  end

  def destroy
    @beacon = Beacon.find(params[:id])
    @beacon.destroy

    redirect_to beacons_path
  end

end
