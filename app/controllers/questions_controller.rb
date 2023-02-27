class QuestionsController < ApplicationController
  def ask
  end
  def answer
  #   @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  #   if params[:member]
  #     @members = @members.select { |member| member.start_with?(params[:member]) }
  #   end
  # end
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
