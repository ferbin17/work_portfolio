class FerbinController < ApplicationController
  def index
    p "111"
  end
  
  def experience
    p request.subdomain
  end
end
