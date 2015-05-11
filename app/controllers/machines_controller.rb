class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update, :destroy]


  def index
    @machines = Machine.all
    render json: @machines
  end

  def show
        render json: @machine
  end


  def edit
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.save
    render json:@machine
  end

  def update
    @machine.update(machine_params)
    render json: @machine
  end

  def destroy
    @machine.destroy
    render json: @machine
  end

  private
    def set_machine
      @machine = Machine.find(params[:id])
    end

    def machine_params
      params[:machine]
    end
end
