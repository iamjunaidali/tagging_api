module Api
  module V1
    class CampaignsController < BaseController
      actions :create

      private

      def permitted_params
        params.require(:campaign).permit(:title, :purpose, :duration, :user_id)
      end
    end
  end
end
