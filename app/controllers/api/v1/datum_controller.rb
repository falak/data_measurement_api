module Api
  module V1
    class DatumController < ApplicationController

      # process the data and convert it to signals
      # @param threshold [Integer] the value for detecting spikes
      # @param start_date [TimeDate] starting date for selecting date
      # @param end_date [TimeDate] end date for selecting the range of data.
      # @return [Json] Output signal otherwise error
      def process_data
        if !params[:threshold].nil? && !params[:end_date].nil? && !params[:start_date].nil?
          data = Datum.select(:value).where('threshold = ? AND created_at <= ? AND created_at >= ?', params[:threshold] , params[:end_date].to_datetime , params[:start_date].to_datetime)
          if !data.nil?
            output = Array.new
            data.each do |d|
              if d.value > 2.0
                output << 1
              else
                output << 0
              end
            end
            render json: { status: 'SUCCESS', message: 'data available for selected dates',data: output}
          else
            render json: { status: 'ERROR', message: 'Data not found' }
          end
        else
          render json: { status: 'ERROR', message: 'Some parameters missing' }
        end
      end

      
      private

      def data_params
        params.require(:post).permit(:value, :threshold, :start_date, :end_date)
      end
    end
  end
end

