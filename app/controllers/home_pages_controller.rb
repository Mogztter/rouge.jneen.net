class HomePagesController < ApplicationController
  def show
    if params[:name]
      lexer = rouge::Lexer.find(params[:name])
    else
      lexer = rouge::Lexer.all.sample
    end
    @demo = Paste.demo_for(lexer)
  end
end
