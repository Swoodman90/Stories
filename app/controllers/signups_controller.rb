class SignupsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to thanks_path
    else
      render :new
    end
  end

  private

    def signup_params
      params.require(:signup).permit(:firstname, :email)
    end

end
