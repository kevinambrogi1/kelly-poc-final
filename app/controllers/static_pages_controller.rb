class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def about
  end

  def school
  end

  def corporate
  end

  def shows
  end

  def testimonials
  end

  def contact
  end

end
