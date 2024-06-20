class PersonsController < ApplicationController
  def profile

  end
  def show
    redirect_to "/articles#index"
  end
end
