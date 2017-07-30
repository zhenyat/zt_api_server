class SubjectsController < ApplicationController
  before_action :set_category
  before_action :set_category_subject, only: [:show, :update, :destroy]

  # GET /categories/:category_id/subjects
  def index
    json_response(@category.subjects)
  end

  # GET /categories/:category_id/subjects/:id
  def show
    json_response(@subject)
  end

  # POST /categories/:category_id/subjects
  def create
    @category.subjects.create!(subject_params)
    json_response(@category, :created)
  end

  # PUT /categories/:category_id/subjects/:id
  def update
    @subject.update(subject_params)
    head :no_content
  end

  # DELETE /categories/:category_id/subjects/:id
  def destroy
    @subject.destroy
    head :no_content
  end

  private

  def subject_params
    params.permit(:category_id, :name, :title, :abstract, :description)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_category_subject
    @subject = @category.subjects.find_by!(id: params[:id]) if @category
  end
end
