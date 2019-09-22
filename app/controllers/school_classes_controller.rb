class SchoolClassesController < ApplicationController
  def index 
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = set_school_class
  end

  def edit
    @school_class = set_school_class
  end

  def create
    @school_class = SchoolClass.create(schoolClass_params)
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = set_school_class
    @school_class.update(schoolClass_params)

    redirect_to school_class_path(@school_class)
  end

  def destroy
    SchoolClass.destroy(params[:id])
    redirect_to school_classes_path
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def schoolClass_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
