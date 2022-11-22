class DreamsController < ApplicationController

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

  private

  def dream_params
    params.require(:dream).permit(:name, :details, :price, :photo)
  end
end
