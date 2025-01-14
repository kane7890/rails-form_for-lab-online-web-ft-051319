class SchoolClassesController < ApplicationController

  def new
    @schoolclass=SchoolClass.new
  end

  def create
    @schoolclass=SchoolClass.create(params.require(:school_class).permit(:title, :room_number))

    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass=SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass=SchoolClass.find(params[:id])

  end

  def update
    @schoolclass=SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

end
