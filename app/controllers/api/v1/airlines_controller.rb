module  Api
  module V1
    class AirlinesController < ApplicationController
      protect_from_forgery with: :null_session

      # GET /api/v1/airlines
      def index
        airlines = Airline.all

       render json: AirlineSerializer.new(airlines, options).serialized_json
      end

      # GET /api/v1/airlines/:slug
      def show
        airline = Airline.find_by(slug: params[:slug])

        render json: AirlineSerializer.new(airline, options).serialized_json
      end

      # POST /api/v1/airlines
      def create
        airline = Airline.new(airline_params)
        if airline.save
          render json: AirlineSerializer.new(airline).serialized_json
        else
            render json: {errors: airline.errors.messages}, status: 422
        end
      end

      # PATCH /api/v1/airlines/:slug
      def update
        airline = Airline.find_by(slug: params[:slug])

        if airline.update(airline_params)
          render json: AirlineSerializer.new(airline, options).serialized_json
        else
          render json: {errors: airline.errors.messages}, status: 422
        end
      end

      # DELETE /api/v1/airlines/:slug
      def destroy
        airline = Airline.find_by(slug: params[:slug])

        if airline.destroy
          head :no_content
        else
          render json: {errors: airline.errors.messages}, status: 422
        end
      end

      private
      # Used For compound documents with fast_jsonapi
      # %i: Non-interpolated Array of symbols, separated by whitespace
      def options
        @options ||= {include: %i[reviews]}
      end
      
      # strong parameters
      def airline_params
        params.require(:airline).permit(:name, :image_url)
      end
    end
  end
end