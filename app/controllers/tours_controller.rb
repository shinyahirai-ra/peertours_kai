class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  def index
    @tours = Tour.page(params[:page])
  end

  def show
  end

  def new
    @tour = Tour.new
  end

  def edit
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      flash[:success] = "Tour posted!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    @tour.update(tour_params)
  end

  def destroy
    @tour.destroy
  end

  private
    def set_tour
      @tour = Tour.find(params[:id])
    end

    def tour_params
      params.require(:tour).permit(:title, :area_id, :recommend_one, :recommend_two, :recommend_three, :included, :number_of_people, :meeting_place, :price, :time)
    end
end
