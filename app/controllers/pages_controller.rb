class PagesController < ApplicationController
  def index
    categories = Unirest.get "https://pareshchouhan-trivia-v1.p.mashape.com/v1/getCategoryList",
  headers:{
    "X-Mashape-Key" => "KyrGOe2aGamshJFkL1NkgeypObIop18ONrKjsnzqhUJXqLzbg2",
    "Accept" => "application/json"
  }
  @categories = categories.body
  end

  def show
    @category_id = params[:id]
    @questions = Unirest.get("https://pareshchouhan-trivia-v1.p.mashape.com/v1/getQuizQuestionsByCategory?categoryId=#{@category_id}&limit=10&page=#1",
  headers:{
    "X-Mashape-Key" => "KyrGOe2aGamshJFkL1NkgeypObIop18ONrKjsnzqhUJXqLzbg2",
    "Accept" => "application/json"
  }).body
  end

end