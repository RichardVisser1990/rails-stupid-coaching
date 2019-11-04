# frozen_string_literal: true
# class: questionscontroller

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params['question']
    if @answer == 'I am going to work'
      @coach = 'Great!'
    elsif @answer.include?('?')
      @coach =  'Silly question, get dressed and go to work!'
    else
      @coach =  "I don't care, get dressed and go to work!"
    end
  end
end
