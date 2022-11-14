class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  private

  def coach_answer(your_message)
    if your_message == "I'm gonna work!"
      'Great!'
    elsif your_message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      'I don t care, get dressed and go to work!'
    end
  end
end
