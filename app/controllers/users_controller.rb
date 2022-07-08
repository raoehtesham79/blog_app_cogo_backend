class UsersController < ApplicationController
    protect_from_forgery with: :null_session
    def usersList
        data =[{
            "name"=>"rao",
            "age"=>22
        },
        {
            "name"=>"rao",
            "age"=>22
        },
        {
            "name"=>"rao",
            "age"=>22
        }
        ]
        render json: data
    end
    def addUser
        data=User.new({
            "user_name"=>params[:user_name],
            "user_email"=>params[:user_email],
            "user_password"=>params[:user_password]
        })

        data.save
        render json: params
    end
end
