class FormsController < ApplicationController
  include FormBehaviors

  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to forms_path, notice: "Form created"
    else
      render :new
    end
  end

  def edit
    @form = Form.find(params[:id])
  end

  def update
    @form = Form.find(params[:id])
    if @form.update(form_params)
      redirect_to forms_path, notice: "Form updated"
    else
      render :edit
    end
  end

  private
  
  def form_params
    form_attributes = [:name, :published]
    params.require(:form).permit(form_attributes + form_field_attributes)
  end
end
