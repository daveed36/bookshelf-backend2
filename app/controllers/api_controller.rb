require 'rest-client'

class ApiController < ApplicatonController


    def google
        render json: googe_data
    end

    private

    def googe_data
        query = params[:query].gsub(/\s/, "+")
        if params[:by] != "all"
            if params[:by] !="subject"
                query = "in#{params[:by]}:#{query}"
            else
                query = "subject:#{query}"
            end
        end