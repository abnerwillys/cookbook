class HomeController < ApplicationController
  def index
    render plain: 'Página Principal'
  end

  def ola
    render plain: 'Você está na página (/ola)'
  end
end