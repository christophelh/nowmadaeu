class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end
end
