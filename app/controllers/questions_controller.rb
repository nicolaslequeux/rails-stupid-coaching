class QuestionsController < ApplicationController

  def ask
  end

  def answer
      @question = params[:question]
      if @question == @question.upcase
       @answer = coach_answer_enhanced(@question)
      else
       @answer = coach_answer(@question)
      end
  end
end

private

def coach_answer(your_message)
  if your_message[your_message.length - 1] == "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work"
    return "Great"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  return "I can feel your motivation!"
end
