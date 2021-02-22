module Api
  module V1
    class CampaignsController < BaseController
      actions :create

      private

      def permitted_params
        params.require(:campaign).permit(:title, :purpose, :duration, :user_id)
      end

      def resource
        @resource ||= model.find_by!(id: permitted_params[:id])
      end
    end
  end
end
