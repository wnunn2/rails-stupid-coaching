# frozen_string_literal: true

# i hate you rubocop
class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @answer = params[:question]
    @answer = if @answer.downcase == 'i am going to work'
                'Great!'
              elsif @answer.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
