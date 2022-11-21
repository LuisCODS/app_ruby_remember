class AnnotationsController < ApplicationController

  # ========================= Configuration =====================
  before_action :set_annotation, only: %i[show edit update destroy]
  before_action :set_friend, only: %i[create new edit update]

  # GET /annotations or /annotations.json
  def index
    @annotations = Annotation.all.paginate(page: params[:page], per_page: 10)
  end

  # GET /annotations/1 or /annotations/1.json
  def show
    # has  @annotation = Annotation.find(params[:id])
  end

  # GET /annotations/new
  def new
    @annotation = Annotation.new
    # Has @friends = Friend.all
  end

  # GET /annotations/1/edit
  def edit
    # has  @annotation = Annotation.find(params[:id])
    # Has @friends = Friend.all
  end

  # POST /annotations or /annotations.json
  def create
    @annotation = Annotation.new(annotation_params)

    respond_to do |format|
      if @annotation.save
        format.html { redirect_to annotation_url(@annotation), notice: "Annotation was successfully created." }
        format.json { render :show, status: :created, location: @annotation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @annotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annotations/1 or /annotations/1.json
  def update
    respond_to do |format|
      if @annotation.update(annotation_params)
        format.html { redirect_to annotation_url(@annotation), notice: "Annotation was successfully updated." }
        format.json { render :show, status: :ok, location: @annotation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @annotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annotations/1 or /annotations/1.json
  def destroy
    # has  @annotation = Annotation.find(params[:id])
    @annotation.destroy

    respond_to do |format|
      format.html { redirect_to annotations_url, notice: "Annotation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # ========================= Méthodes de configuration =====================
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

  def set_friend
    @friends = Friend.all
  end
    # Only allow a list of trusted parameters through.
    def annotation_params
      params.require(:annotation).permit(:body, :friend_id)
    end
end
