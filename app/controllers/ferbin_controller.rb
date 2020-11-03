class FerbinController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end
  
  def about
  end
  
  def works
  end
  
  def experience
    p request.subdomain
  end
  
  def education
  end
end
