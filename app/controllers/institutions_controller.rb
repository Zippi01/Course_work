class InstitutionsController < ApplicationController
  before_action :set_institution, only: [:show, :edit, :update, :destroy]
  before_action :authorize_admin

  def index
    @institutions = Institution.all
  end

  def show
  end

  def new
    @institution = Institution.new
  end

  def edit
  end

  def create
    @institution = Institution.new(institution_params)

    respond_to do |format|
      if @institution.save
        format.html { redirect_to "/institutions", notice: 'Тип успішно створений.' }
        format.json { render :show, status: :created, location: @institution }
      else
        format.html { render :new }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @institution.update(institution_params)
        format.html { redirect_to "/institutions", notice: 'Тип успішно оновлено.' }
        format.json { render :show, status: :ok, location: @institution }
      else
        format.html { render :edit }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @institution.destroy
    respond_to do |format|
      format.html { redirect_to institutions_url, notice: 'Тип успішно видалений.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_institution
      @institution = Institution.find(params[:id])
    end

    def authorize_admin
      if !(current_user && current_user.admin == true)
        redirect_to "/restaurants"
      end
    end

    def institution_params
      params.require(:institution).permit(:name)
    end
end
