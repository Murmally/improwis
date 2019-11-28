class ExecRoomsController < ApplicationController
  before_action :set_exec_room, only: [:show, :update, :destroy]

  # GET /exec_rooms
  def index
    @exec_rooms = ExecRoom.all

    render json: @exec_rooms
  end

  # GET /exec_rooms/1
  def show
    render json: @exec_room
  end

  # POST /exec_rooms
  def create
    @exec_room = ExecRoom.new(exec_room_params)

    if @exec_room.save
      render json: @exec_room, status: :created, location: @exec_room
    else
      render json: @exec_room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exec_rooms/1
  def update
    if @exec_room.update(exec_room_params)
      render json: @exec_room
    else
      render json: @exec_room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exec_rooms/1
  def destroy
    @exec_room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exec_room
      @exec_room = ExecRoom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exec_room_params
      params.fetch(:exec_room, {})
    end
end
