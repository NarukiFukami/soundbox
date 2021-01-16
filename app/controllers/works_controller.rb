class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  def index
    @works = Work.all.by_new
  end

  def show
    # @work = Work.find(params[:id])
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render 'new'
    end
  end

  def new
    @work = Work.new
    @work.artist_id = parmas[:artist_id] if params[:artist_id]
  end

  def edit
    # @work = Work.find(params[:id])
  end

  def update
    # @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end

  def destroy
    # @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  private

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params[:work].permit(
      :title,
      :release,
      :song,
      :description,
      :artist_id,
    )
  end
end
