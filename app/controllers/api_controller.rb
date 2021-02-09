require 'rest-client'

class ApiController < ApplicationController

  def google
    render json: google_data
  end

  private

  def google_data
    query = params[:query].gsub(/\s/, "+")
    if params[:by] != "all"
      if params[:by] != "subject"
        query = "in#{params[:by]}:#{query}"
      else
        query = "subject:#{query}"
      end
    end

    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{query}&maxResults=40&startIndex=0&key=#{ENV['GOOGLE_KEY']}")

    response.body
  end

end