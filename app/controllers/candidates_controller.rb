class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :update, :destroy]

  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = Candidate.all

    render json: @candidates
  end

  # GET /candidates/1
  # GET /candidates/1.json
  # def show
  #   render json: @candidate
  # end

  # POST /candidates
  # POST /candidates.json
  # def create
  #   @candidate = Candidate.new(candidate_params)
  # 
  #   if @candidate.save
  #     render json: @candidate, status: :created, location: @candidate
  #   else
  #     render json: @candidate.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update(candidate_params)
      head :no_content
    else
      render json: @candidate.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /candidates/1
  # # DELETE /candidates/1.json
  # def destroy
  #   @candidate.destroy
  # 
  #   head :no_content
  # end

  private

    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    def candidate_params
      params.require(:candidate).permit(:name, :votes, :order, :percentage)
    end
end
