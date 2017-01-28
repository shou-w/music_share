class HomeController < ApplicationController
  def top
    if user_signed_in?
      @note = Note.new
      @notes = Note.all.order(created_at: :desc)
    else
      @message = "Welcome to『music share』 !!!"
      @summary = "音楽に関するいろんなことをみんなでシェアしよう"
    end
  end

  def about
  end

  def index
    @note = Note.new
    @notes = Note.all.order(created_at: :desc)
  end

end
