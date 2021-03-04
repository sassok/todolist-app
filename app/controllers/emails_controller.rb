class EmailsController < ApplicationController
  def index
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.all
    Email.create!(object: Faker::Lorem.word, body: Faker::Lorem.paragraph, status: false)
  end

end
