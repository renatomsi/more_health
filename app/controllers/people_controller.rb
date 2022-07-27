class PeopleController < ApplicationController

  def index
    # @people = Person.all
    @people = Person.page(params[:page]).per(5)
  end

end
