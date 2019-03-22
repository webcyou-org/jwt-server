module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_user, except: [:create, :logout]

      def index
        render json: {status: 200, user: response_fields(current_user.to_json) }
      end

      def create
        @user = User.new(users_params)

        if @user.name.blank?
          response_bad_request
        else
          if User.exists?(email: @user.email)
            response_conflict(:user)
          else
            if @user.save
              response_success(:user, :create)
            else
              response_internal_server_error
            end
          end
        end
      end

      def logout
        render json: {status: 200}
      end

      private

      def users_params
        params.permit(:name, :email, :password)
      end

      def response_fields(user_json)
        user_parse = JSON.parse(user_json)
        user_parse.except('created_at', 'updated_at', 'password', 'password_digest')
      end
    end
  end
end
