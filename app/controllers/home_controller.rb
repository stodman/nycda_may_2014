class HomeController < ApplicationController

  def index
    @transactions = [
      {amount: 23, date: Time.now},
      {amount: 9393, date: Time.now - 2.days}
    ]
  end

  def show

  end
end
