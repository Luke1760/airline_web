module  Api
  module V1
    class AirlinesController < ApplicationController
      def index
        airlines = Airline.all

       render json: AirlineSerializer.new(airlines, options).serialized_json
      end

      def show
        airline = Airline.find(slug: params[:slug])

        render json: AirlineSerializer.new(airline, options).serialized_json
      end

      def create
        airline = Airline.new(airline_params)
          if airline.save
          render json: AirlineSerializer.new(airline).serialized_json
          else
            render json: {errors: airline.errors.messages}, status: 422
            # https://travisjeffery.com/b/2012/04/rendering-errors-with-json-and-rails/
      end

      def update
        airline = Airline.find(slug: params[:slug])

        if airline.update(airline_params)
          render json: AirlineSerializer.new(airline, options).serialized_json
        else
          render json: {errors: airline.errors.messages}, status: 422
        end
      end

      def destroy
        airline = Airline.find(slug: params[:slug])

        if airline.destroy
          head :no_content
          # https://softwareengineering.stackexchange.com/questions/263285/rendering-head-ok-vs-head-no-content-any-good-practices
        else
          render json: {errors: airline.errors.messages}, status: 422
        end
      end

      private
      def airline_params
        params.require(:airline).permit(:name, :image_url)
      end

      def options
        @options ||= {include: %i[reviews]}
        # https://stackoverflow.com/questions/47039716/whats-does-i-or-i-do-in-ruby
      end
    end
  end
end