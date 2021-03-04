class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
   @email = Email.create!(object: Faker::Lorem.word, body: Faker::Lorem.paragraph)
    respond_to do |format|
      if @email.save
          format.html { redirect_to root_path }
          format.js { }
        flash[:notice] = "Task created"
      else
        format.html { redirect_to root_path }
        format.js { }
        flash[:notice] = "Please try again"
      end
    end
  end

  def show
  @emails = Email.all
  end

end
