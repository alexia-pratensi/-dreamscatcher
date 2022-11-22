class DreamsController < ApplicationController

  def index
    @dreams = Dream.all
  end

  def edit

  end

  def updated
  end
end
