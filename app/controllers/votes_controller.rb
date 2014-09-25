class VotesController < ApplicationController


  
  def create
    question = Question.find(params[:question_id])
    if params[:answer_id] == nil
      vote = question.votes.build
      vote.save!
      redirect_to(root_path)
    else
      answer = Answer.find(params[:answer_id])
      vote = answer.votes.build
      vote.save!
      redirect_to(root_path)
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.destroy
    redirect_to(root_path)
  end
end