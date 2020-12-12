class FerbinController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @works = Hash[fetch_work.first(3)]
  end
  
  def about
  end
  
  def works
    @works = fetch_work
  end
  
  def experience
    p request.subdomain
  end
  
  def education
  end
  
  private
    def fetch_work
      if File.exist?("#{Rails.root}/app/views/ferbin/works.yml")
        works = Psych.safe_load(File.open("#{Rails.root}/app/views/ferbin/works.yml"), aliases: true)
      end
      works
    end
end
