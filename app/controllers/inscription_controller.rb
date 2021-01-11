class InscriptionController < ApplicationController
  def index
    @user = User.new
    @titre = "Inscription"
  end
end