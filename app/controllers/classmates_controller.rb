class ClassmatesController < ApplicationController
  def index
    @classmates = Classmate.all
  end

  def show
    @classmate = Classmate.find(params[:id])
  end

  def new
    @classmate = Classmate.new
  end

  def create
    classmate = Classmate.create(classmate_params)

    redirect_to classmates_path
  end
  

  def edit
    @classmate = Classmate.find(params[:id])
  end

  def update
    @classmate = Classmate.find(params[:id])
    @classmate.update(classmate_params)

    redirect_to classmate_path(@classmate)
  end

  def destroy
    @classmate = Classmate.find(params[:id])
    @classmate.destroy

    redirect_to classmates_path
  end
  
  private

  def classmate_params
    params.required(:classmate).permit(:name, :motto, :image)
  end
end
