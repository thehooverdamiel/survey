class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
  	@person = Person.new(person_params)

  	@person.save
  	redirect_to person_sections_1_path(@person)
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
 
    redirect_to new_person_path
  end

  private
  	def person_params
  		params.require(:person).permit(:name, :address)
  	end
end
