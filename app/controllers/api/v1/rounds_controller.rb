module Api
  module V1
    class RoundsController < ApplicationController
      before_action :set_round, only: [:show, :update, :destroy]

      # GET /rounds
      def index
        @rounds = Round.all

        render json: @rounds
      end

      # GET /rounds/1
      def show
        render json: @round
      end

      # POST /rounds
      def create
        @round = Round.new(round_params)

        if @round.save
          aff = User.find(@round.aff_id)
          neg = User.find(@round.neg_id)

          aff.rounds << @round
          neg.rounds << @round

          render json: @round, status: :created
        else
          render json: @round.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /rounds/1
      def update
        if @round.update(round_params)
          render json: @round
        else
          render json: @round.errors, status: :unprocessable_entity
        end
      end

      # DELETE /rounds/1
      def destroy
        @round.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_round
          @round = Round.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def round_params
          params.permit(:aff_id, :neg_id, :winner_id, :tournament_id, :division, :round, :aff_speaker_points, :neg_speaker_points, :round_type)
        end
    end
  end
end
