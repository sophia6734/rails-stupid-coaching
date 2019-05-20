class QuestionsController < ApplicationController
  def ask
    @question_ask = 'Hello, there!'
  end

  def answer
    @question = params[:questions]
    if @question == ''
      @answer = 'write something!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
