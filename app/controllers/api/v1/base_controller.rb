module Api
  module V1
    class BaseController < ApplicationController
      include ExceptionHandler

      protected

      def create
        if new_resource.save
          render json: new_resource, status: :created
        else
          render json: { message: new_resource.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        if resource.update(permitted_params)
          render json: resource
        else
          render json: { message: resource.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def show
        render json: resource
      end

      def new_resource
        @new_resource ||= model.new(permitted_params)
      end

      def model
        controller_name.singularize.capitalize.constantize
      end

      def self.actions(*actions)
        send :public, *actions
      end
    end
  end
end
