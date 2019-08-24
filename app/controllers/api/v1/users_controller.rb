module Api
    module V1
        class UsersController < ApplicationController
            def index
                users = User.all;
                render json: {status: 'SUCCESS', message: 'Loaded users', data:users},status: :ok
                # render json: @users
            end

            def show
                user = User.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded users', data:user},status: :ok
            end

            def create
                user = User.new(user_params)

                if user.save
                    render json: {status: 'SUCCESS', message: 'Saved user', data:user},status: :ok
                else
                    render json: {status: 'Error', message: 'User not saved', data:user},status: :unprocessable_entity
                end
                
            end

            def update
                @user = User.find(params[:id])

                if @user.update_attributes(user_params)

                    render json: {status: 'SUCCESS', message: 'Updated user', data: @user},status: :ok
                else
                    render json: {status: 'Error', message: 'User not updated', data:users},status: :unprocessable_entity
                end
            end

            def destroy
                user = User.find(params[:id])
                user.destroy
                render json: {status: 'SUCCESS', message: 'Deleted user', data:user},status: :ok
            end

            private

            def user_params
                params.permit(:username, :password)
            end

        end
    end
end