class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update]

  def index
    @dreams = Dream.all
      if params[:query].present?
        sql_query = "name ILIKE :query OR details ILIKE :query  OR content ILIKE :query"
        @dreams = Dream.where(sql_query, query: "%#{params[:query]}%")
      else
        @dreams = Dream.all
      end
  end

  def show

  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user_id = current_user.id
    if @dream.save
      redirect_to @dream, notice: 'Ton rêve a été soumis avec succès !'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @dream.update(dream_params)

    redirect_to dream_path(@dream)
  end

  private

  def dream_params
    params.require(:dream).permit(:name, :details, :price, :photo)
  end

  def set_dream
    @dream = Dream.find(params[:id])
  end
end
